/* ============================================================
 * jquery.modal.city  4.1  New area 
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */
! function($) {
  var backdropLayerTpl = '<div class="modal_backdrop fade"></div>';
  var htmlLayerTpl = [
    '<div class="modal">',
    '<div class="modal_dialog">',
    '<div class="modal_content pie_about">',
    '<div class="modal_header">',
    '<span class="title J_modal_title"></span>',
    '<span class="max_remind J_modal_max"></span>',
    '<a href="javascript:;" class="close J_dismiss_modal"></a>',
    '</div>',
    '<div class="modal_body pd0">',
    '<div class="listed_group nmb city_new" id="selectedCityGroup">',
    '<div class="left_text"> chosen ：</div>',
    '<div class="center_text" id="selectedCityContainer"></div>',
    '<a href="javascript:;" class="right_text" id="selectedAllClear"> Emptied </a>',
    '<div class="clear"></div>',
    '</div>',
    '<div class="J_modal_content"></div>',
    '</div>',
    '<div class="modal_footer">',
    '<div class="res_add_but">',
    '<div class="butlist">',
    '<div class="btn_blue J_hoverbut btn_100_38 J_btnyes" id="cityConfirmBtn"> Indeed   set </div>',
    '</div>',
    '<div class="butlist">',
    '<div class="btn_lightgray J_hoverbut btn_100_38 J_dismiss_modal J_btncancel"> take   Eliminate </div>',
    '</div>',
    '<div class="clear"></div>',
    '</div>',
    '</div>',
    '<input type="hidden" class="J_btnload" />',
    '</div>',
    '</div>',
    '</div>'
  ].join('');
  var cityModal = '[data-toggle="funCityModal"]';
  var $cityModal = $(cityModal);
  $cityModal.live('click', function() {
    if (QS_city_parent.length <= 0) {
      // TODO
      console.log(' Region classification error ！！！');
      return false;
    }
    var that = $(this),
      cityCategoryLevel = 3; //  Classification level 
    var cityModalTemplate = '<div class="modal_body_box modal_body_box_new_city">';
    cityModalTemplate += '<div class="select_group">';
    cityModalTemplate += '<div class="select_g1"> Select area </div>';
    cityModalTemplate += '<div class="select_g2 s' + (cityCategoryLevel - 1) + '">';
    //  generate select
    for (var i = 0; i < (cityCategoryLevel - 1); i++) {
      cityModalTemplate += '<select name="city_select_' + (i + 1) + '" id="city_select_' + (i + 1) + '"></select>';
    }
    cityModalTemplate += '</div>';
    cityModalTemplate += '<div class="clear"></div>';
    cityModalTemplate += '</div>';
    cityModalTemplate += '<div class="child_line_group"><div class="cg1"></div><div class="cg2"></div></div>';
    cityModalTemplate += '</div>';
    //  Initialize the regional modal box 
    var titleText = $(this).data('title'),
      multipleChoice = eval($(this).data('multiple')),
      maxChoiceNumber = eval($(this).data('maxnum'));
    initCityModal(titleText, multipleChoice, maxChoiceNumber);
    var widthNumber = eval($(this).data('width'));
    //  Mask layer 
    $(backdropLayerTpl).appendTo($(document.body));
    //  Write the area template 
    $('.J_modal_content').html(cityModalTemplate);
    // 获 take 默认地区
    var defaultCityArray = new Array();
    if ($.trim($(this).data('defaultcity')).length) {
      defaultCityArray = $(this).data('defaultcity').split('.');
    }
    //  Write at the regional level 
    var restoreCode = $cityModal.find('.citySelectedResultCode').val();
    var cityLevel1Template = '';
    for (var i = 0; i < QS_city_parent.length; i++) {
      if (QS_city_parent[i]) {
        var cityLevel1Array = QS_city_parent[i].split(',');
        cityLevel1Template += '<option value="' + cityLevel1Array[0] + '" title="' + cityLevel1Array[1] + '">' + cityLevel1Array[1] + '</option>';
      }
    }
    $('#city_select_1').html(cityLevel1Template);
    //  Restore the default location 
    if (defaultCityArray.length) {
      $('#city_select_1 option').each(function() {
        if (defaultCityArray[0] == $(this).val()) {
          $(this).prop('selected', !0);
        }
      });
    }
    //  Reset the selected area 
    if (restoreCode.length) {
      var restoreCodeLevel1Array = restoreCode.split(',');
      var restoreCodeLevel1StrArray = restoreCodeLevel1Array[restoreCodeLevel1Array.length - 1].split('.');
      $('#city_select_1 option').each(function() {
        if (restoreCodeLevel1StrArray[0] == $(this).val()) {
          $(this).prop('selected', !0);
        }
      });
    }
    //  Write into the district two 
    var cityLevel2Id = $('#city_select_1 option:selected').val(),
      cityLevel2Template = '<option value="" title=" please choose " code=""> please choose </option>';
    if (QS_city[cityLevel2Id].length > 0) {
      cityLevel2Template += getChildCategory(cityLevel2Id, 1, '', cityLevel2Id);
    } else {
      // TODO
      console.log(' No secondary classification ！！！');
    }
    $('#city_select_2').html(cityLevel2Template);
    //  Restore the default location 
    if (defaultCityArray.length) {
      $('#city_select_2 option').each(function() {
        if (defaultCityArray[1] == $(this).val()) {
          $(this).prop('selected', !0);
        }
      });
    } else {
      //  No default area is set 
      $('#city_select_2 option').eq(1).prop('selected', !0);
    }
    //  Reset the selected area 
    if (restoreCode.length) {
      var restoreCodeLevel1Array = restoreCode.split(',');
      var restoreCodeLevel1StrArray = restoreCodeLevel1Array[restoreCodeLevel1Array.length - 1].split('.');
      $('#city_select_2 option').each(function() {
        if (restoreCodeLevel1StrArray[1] == $(this).val()) {
          $(this).prop('selected', !0);
        }
      });
    }
    //  Written in three areas 
    var cityLevel3Id = $('#city_select_2 option:selected').val(),
      cityLevel3Template = '',
      cityLevel3Title = $('#city_select_2 option:selected').attr('title'),
      cityLevel3Code = $('#city_select_2 option:selected').attr('code');
    if (QS_city[cityLevel3Id].length > 0) {
      cityLevel3Template += getChildCategory(cityLevel3Id, 0, cityLevel3Title, cityLevel3Code);
    } else {
      // TODO
      console.log(' No classification ！！！');
    }
    if (defaultCityArray.length) {
      if (defaultCityArray[1] != cityLevel3Id) {
        $('.child_line_group .cg1').html(cityLevel3Template);
      }
      $('.child_line_group .cg2').html(getChildCategory(defaultCityArray[1], 0, getCagegoryName(defaultCityArray[0], defaultCityArray[1], 2), defaultCityArray[0] + '.' + defaultCityArray[1]));
    } else {
      $('.child_line_group .cg1').html(cityLevel3Template);
    }
    adjustLine();
    //  Restore selected 
    var existsArray = new Array();
    if (restoreCode.length) {
      $('.child_line_group .cl1').each(function() {
        existsArray.push($(this).attr('code'));
      });
      var restoreCodeArray = restoreCode.split(',');
      for (var i = 0; i < restoreCodeArray.length; i++) {
        var restoreCodeStrArray = restoreCodeArray[i].split('.');
        if ($.inArray(restoreCodeStrArray[1], existsArray) < 0) {
          if ($('.child_line_group .cg1 .child_line').length) {
            $('.child_line_group .cg1 .child_line').eq(0).after(getChildCategory(restoreCodeStrArray[1], 0, getCagegoryName(restoreCodeStrArray[0], restoreCodeStrArray[1], 2), restoreCodeStrArray[0] + '.' + restoreCodeStrArray[1]));
          } else {
            $('.child_line_group .cg1').html(getChildCategory(restoreCodeStrArray[1], 0, getCagegoryName(restoreCodeStrArray[0], restoreCodeStrArray[1], 2), restoreCodeStrArray[0] + '.' + restoreCodeStrArray[1]));
          }
          existsArray.push(restoreCodeStrArray[1]);
        }
        $('.child_input').each(function() {
          if (restoreCodeArray[i] == $(this).attr('code')) {
            $(this).prop('checked', !0);
          }
        });
      }
      adjustLine();
      //  Synchronize 
      if (multipleChoice) {
        copyCityChoice();
      }
    }
    //  Level cascade 
    $('#city_select_1').die().live('change', function() {
      if (QS_city[$(this).val()].length > 0) {
        var cityLevel2CascadeTemplate = '<option value="" title=" please choose " code=""> please choose </option>';
        cityLevel2CascadeTemplate += getChildCategory($(this).val(), 1, '', $(this).val());
        $('#city_select_2').html(cityLevel2CascadeTemplate);
      } else {
        // TODO
        disapperTooltip("remind", ' There are no subclasses under this category ');
      }
    });
    //  Secondary cascade 
    $('#city_select_2').die().live('change', function() {
      var currentId = $(this).val(),
        currentText = $('#city_select_2 option:selected').text(),
        currentCode = $('#city_select_2 option:selected').attr('code'),
        hasCurrent = true;
      // 选择 please choose 不做任何操作
      if (!$(this).val().length) return false;
      $('.child_line_group .cl1').each(function() {
        if ($(this).attr('code') == currentId) {
          hasCurrent = false;
        }
      });
      if (!hasCurrent) {
        disapperTooltip("remind", ' There are current categories ');
        return false;
      }
      if (QS_city[$(this).val()].length > 0) {
        if ($('.child_line_group .cg1 .child_line').length) {
          $('.child_line_group .cg1 .child_line').eq(0).before(getChildCategory(currentId, 0, currentText, currentCode));
        } else {
          $('.child_line_group .cg1').html(getChildCategory(currentId, 0, currentText, currentCode));
        }
        adjustLine();
      } else {
        // TODO
        disapperTooltip("remind", ' There are no subclasses under this category ');
      }
    });
    //  Level 3 Click the assignment 
    $('.child_input').die().live('click', function() {
      if ($(this).is(':checked')) {
        //  Radio and multi-election to do the corresponding operation 
        if (multipleChoice) {
          //  Determine whether the maximum number of choices is exceeded 
          if ($('.child_input:checked').length > maxChoiceNumber) {
            disapperTooltip("remind", ' Most optional ' + maxChoiceNumber + ' Area ');
            return false;
          }
          //  Synchronize 
          copyCityChoice();
        } else {
          //  Radio 
          var currentResultCode = $(this).attr('code');
          var currentResultText = $(this).attr('title');
          that.find('.citySelectedResultCode').val(currentResultCode);
          that.find('.citySelectedResultText').text(currentResultText);
          that.find('.citySelectedResultText').attr(currentResultText);
          removeModal();
        }
      } else {
        //  Radio and multi-election to do the corresponding operation 
        if (multipleChoice) {
          //  Synchronize 
          copyCityChoice();
        }
      }
    });
    // 设 set 位置
    $('.modal_dialog').css({
      width: widthNumber + 'px',
      left: ($(window).width() - widthNumber) / 2,
      top: ($(window).height() - $('.modal_dialog').outerHeight()) / 2 + $(document).scrollTop()
    });
    //  Add progressive effects 
    $('.modal_backdrop').addClass('in');
    //  Indeed  set 事件
    $('#cityConfirmBtn').die().live('click', function() {
      var codeArray = new Array();
      var titleArray = new Array();
      $('.child_input:checked').each(function(index, val) {
        codeArray[index] = $(this).attr('code');
        titleArray[index] = $(this).attr('title');
      });
      that.find('.citySelectedResultCode').val(codeArray.join(','));
      that.find('.citySelectedResultText').text(titleArray.length ? titleArray.join('+') : ' please choose ');
      that.find('.citySelectedResultText').attr('title', titleArray.length ? titleArray.join('+') : ' please choose ');
      removeModal();
    });
  });
  /**
   * 获 take  Category Name 
   * @param level1Id  Level one ID
   * @param level2Id  Secondary ID
   * @param level  Classification level 
   * @returns {string}  Category Name 
   */
  function getCagegoryName(level1Id, level2Id, level) {
    var cagegoryName = '';
    if (level == 1) {
      if (QS_city_parent) {
        for (var i = 0; i < QS_city_parent.length; i++) {
          if (QS_city_parent[i]) {
            var cityLevel1Array = QS_city_parent[i].split(',');
            if (cityLevel1Array[0] == level1Id) {
              cagegoryName = cityLevel1Array[1];
            }
          }
        }
      }
    } else {
      if (QS_city[level1Id]) {
        var level2Array = QS_city[level1Id].split('`');
        for (var i = 0; i < level2Array.length; i++) {
          var level2StrArray = level2Array[i].split(',');
          if (level2StrArray[0] == level2Id) {
            cagegoryName = level2StrArray[1];
          }
        }
      }
    }
    return cagegoryName;
  }
  /**
   *  Adjust the height of the left and right 
   */
  function adjustLine() {
    $('.child_line .cl1').each(function() {
      $(this).css('height', $(this).next().height());
    });
  }
  /**
   *  Synchronize 
   */
  function copyCityChoice() {
    var htmlListed = '';
    $('.child_input:checked').each(function(index, el) {
      var listedCode = $(this).attr('code');
      var listedTitle = $(this).attr('title');
      htmlListed += [
        '<div class="listed_item_parent selected_city" code="' + listedCode + '" title="' + listedTitle + '">',
        '<a href="javascript:;" class="listed_item">',
        '<span>' + listedTitle + '</span><div class="del"></div>',
        '</a>',
        '</div>'
      ].join('');
    });
    $('#selectedCityContainer').html(htmlListed);
    if ($('.selected_city').length) {
      $('#selectedCityGroup').removeClass('pb10');
    } else {
      $('#selectedCityGroup').addClass('pb10');
    }
    $('#selectedCityGroup').show();
    //  Selected list item event 
    $('.selected_city').die().live('click', function() {
      var currentCode = $(this).attr('code');
      $('.child_input').each(function(index, el) {
        if ($(this).attr('code') == currentCode) {
          $(this).prop('checked', 0);
        };
      });
      copyCityChoice();
    });
    //  Emptied 选项
    $('#selectedAllClear').live('click', function() {
      $('.child_input:checked').each(function(index, el) {
        $(this).prop('checked', 0);
      });
      copyCityChoice();
    });
  }
  /**
   *  According to classification ID获 take 子 classification  template 
   * @param childId  classification ID
   * @param type  Template type  1->option 0->checkbox
   * @param categoryName  Category Name 
   * @param code 一 Secondary 组合ID
   * @returns {string}  template 
   */
  function getChildCategory(childId, type, categoryName, code) {
    var cityChildTemplate = '';
    if (QS_city[childId].length > 0) {
      var cityChildArray = QS_city[childId].split('`');
      if (type > 0) {
        for (var i = 0; i < cityChildArray.length; i++) {
          if (cityChildArray[i]) {
            var cityChildStrArray = cityChildArray[i].split(',');
            cityChildTemplate += '<option value="' + cityChildStrArray[0] + '" title="' + cityChildStrArray[1] + '" code="' + code + '.' + cityChildStrArray[0] + '">' + cityChildStrArray[1] + '</option>';
          }
        }
      } else {
        cityChildTemplate += '<div class="child_line">';
        cityChildTemplate += '<div class="cl1" code="' + childId + '">' + categoryName + '</div>';
        cityChildTemplate += '<div class="cl2"><ul>';
        for (var i = 0; i < cityChildArray.length; i++) {
          if (cityChildArray[i]) {
            var cityChildStrArray = cityChildArray[i].split(',');
            cityChildTemplate += '<li class="child_li"><label for="childInput' + cityChildStrArray[0] + '"> &nbsp;<input type="checkbox" id="childInput' + cityChildStrArray[0] + '" class="child_input" code="' + code + '.' + cityChildStrArray[0] + '" title="' + cityChildStrArray[1] + '" code="' + cityChildStrArray[1] + '"><span class="txt">' + cityChildStrArray[1] + '</span></label></li>';
          }
        }
        cityChildTemplate += '<div class="clear"></div>'
        cityChildTemplate += '</ul></div>';
        cityChildTemplate += '<div class="clear"></div>'
        cityChildTemplate += '</div>';
      }
    }
    return cityChildTemplate;
  }
  /**
   *  Initialize the regional modal box 
   * @param titleText  title 
   * @param multipleChoice  Multiple choice 
   * @param maxChoiceNumber  Maximum number of choices 
   */
  function initCityModal(titleText, multipleChoice, maxChoiceNumber) {
    var ie = !-[1, ];
    var ie6 = !-[1, ] && !window.XMLHttpRequest;
    // ie6 fixed bug
    if (ie6) {
      $('.modal_backdrop').css("height", $(document).height());
    }
    // 模态框 template 添加到body
    $(htmlLayerTpl).appendTo($(document.body));
    // 写入 title 
    $('.J_modal_title').text(titleText);
    // 写入 Maximum number of choices 
    if (multipleChoice) {
      $('.J_modal_max').text('（最 Multiple choice 择' + maxChoiceNumber + ' One ）');
    };
    //  Radio 模式下隐藏底部
    if (!multipleChoice) {
      $('.modal_footer').hide();
    };
    //  Button interaction effect 
    $(".J_hoverbut").hover(
      function() {
        $(this).addClass("hover");
      },
      function() {
        $(this).removeClass("hover");
      }
    );
    //  drag 
    var newObj = $('.modal_dialog');
    var newTit = newObj.find(".modal_header");
    newTit.mousedown(function(e) {
      var offset = newObj.offset();
      var x = e.pageX - offset.left;
      var y = e.pageY - offset.top;
      $(document).bind('mousemove', function(ev) {
        newObj.bind('selectstart', function() {
          return false;
        });
        var newx = ev.pageX - x;
        var newy = ev.pageY - y;
        newObj.css({
          'left': newx + "px",
          'top': newy + "px"
        });
      });
    });
    $(document).mouseup(function() {
        $(this).unbind("mousemove");
      })
      // PIE Dealing with fillet and so on css3 effect 
    if (ie) {
      if (window.PIE) {
        $('.pie_about').each(function() {
          PIE.attach(this);
        });
      }
    };
  }
  //  Close the modal box 
  $('.J_dismiss_modal').live('click', function() {
    removeModal();
  });
  //  stand by ESC shut down 
  $(document).on('keydown', function(event) {
    if (event.keyCode == 27) {
      removeModal();
    }
  });
  /**
   *  Close the modal box 方法
   */
  function removeModal() {
    setTimeout(function() {
      $('.modal_backdrop').remove();
      $('.modal').remove();
    }, 50)
  }
}(window.jQuery);