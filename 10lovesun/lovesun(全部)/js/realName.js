'use strict';
/**
 * *****************************
 * realName.html 的JS
 * edited by Eliot 2017-10-31
 *  * **************************
 */

/*选项卡切换 */
var tabSwitch = function tabSwitch() {
    var tabs = document.getElementsByClassName('tab');
    var tabsArea = document.getElementsByClassName('tab-panel');

    for (var i = 0; i < tabs.length; i++) {
        tabs[i].index = i;
        tabs[i].onclick = function () {
            for (var y = 0; y < tabs.length; y++) {
                tabs[y].className = 'tab';
                tabsArea[y].style.display = 'none';
            }
            tabsArea[this.index].style.display = 'block';
            this.className = 'tab tab-active';
        };
    }
};

/*图片上传 */
var imgUpload = function (inputId) {
    var inputFile = document.getElementById(inputId);
    var imgLabel = inputFile.parentNode.querySelector('label');
    inputFile.onchange = function () {
        var _self = this;
        var reader = new FileReader();
        reader.onload = function (e) {
            var img = '<img src="' + e.target.result + '" alt="身份证图片" />';
            imgLabel.innerHTML = img;
        }
        /*检验是否为图片*/
        console.log(_self.files[0].type.substring(0,5));
        if (_self.files[0].type.substring(0,5)== 'image') {
            /*检验合格，插入图片*/
            reader.readAsDataURL(_self.files[0]);
        }else{
            alert('请上传图片！');
        }


    }
}

window.onload = function () {
    tabSwitch();
    imgUpload('idcard-facade-input');
    imgUpload('idcard-obverse-input');


};