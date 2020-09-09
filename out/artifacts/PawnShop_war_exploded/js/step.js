/**
 * Created by wangkai on 2018/1/11.
 */
;(function ($) {

  /**
   * 自定义
   * @param method
   * @returns {*}
   */
  $.fn.step = function (method) {
    //你自己的插件代码
    if (methods[method]) {
      return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
    } else if (typeof method === 'object' || !method) {
      return methods.init.apply(this, arguments);
    } else {
      $.error('Method ' + method + ' does not exist on jQuery.tooltip');
    }
  };

  /**
   * 默认值
   * @type {{stepNames: [*], initStep: number}}
   */
  var defStep = {
    stepNames: ['', '', ''],
    initStep: 1
  };

  /**
   * 函数
   * @type {{init: init, next: next, previous: previous, goto: goto}}
   */
  var methods;
  methods = {

    /**
     * 初始化
     * @param options
     */
    init: function (options) {
      // 初始化参数为空，使用默认设置
      if (!options) {
        options = defStep;
      } else {
        // 步骤名称判断
        if (!options.stepNames || typeof options.stepNames !== "object") {
          options.stepNames = defStep.stepNames;
        }
        // 初始化步骤判断
        if (!options.initStep || isNaN(options.initStep) || options.initStep < 0) {
          options.initStep = defStep.initStep;
        }
        // 初始化步骤大于最大值
        if (options.initStep > options.stepNames.length) {
          options.initStep = options.stepNames.length;
        }
      }
      // 初始化样式
      var html = '';
      html += '<ul class="progressbar">';
      $.each(options.stepNames, function (index, name) {
        html += '<li';
        if (index < options.initStep) {
          html += ' class="active" ';
        }
        html += '>';
        html += name;
        html += '</li>';
      });
      html += '</ul>';
      this.empty().append(html);
      // 计算宽度
      $(".progressbar li").css("width", 100 / options.stepNames.length + "%");
    },

    /**
     * 下一步
     */
    next: function () {
      var index = this.find("li.active").length;
      if (index == this.find("li").length) {
        return;
      }
      this.find("li").eq(index).addClass("active");
    },

    /**
     * 上一步
     */
    previous: function () {
      var index = this.find("li.active").length;
      if (index == 1) {
        return;
      }
      this.find("li").eq(index - 1).removeClass("active");
    },

    /**
     * 去第几步
     * @param step
     */
    goto: function (step) {
      if (step < 0 || step > this.find("li").length) {
        return;
      }
      this.find("li").removeClass("active");
      var $target = this.find("li").eq(step - 1);
      $target.addClass("active");
      $target.prevAll("li").addClass("active");
    }
  };
}($));
