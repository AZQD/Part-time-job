'use strict';
/**
 * *****************************
 * 选项卡切换
 * edited by Eliot 2017-10-31
 *  * **************************
 */
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

window.onload = function () {
    tabSwitch();
};