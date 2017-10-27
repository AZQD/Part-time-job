+function() {

    //  Search for location based on keywords 
    function getAcMaps(map) {
        var ac = new BMap.Autocomplete(    // Create an auto-complete object 
            {"input" : "mapSearchInput"
            ,"location" : map
        });
        var myValue;
        ac.addEventListener("onconfirm", function(e) {    // Mouse click on the drop-down list after the event 
            var _value = e.item.value;
            myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            setPlace();
        });
        //  search for 
        $('#key-search-button').die().live('click', function() {
            var searchKey = $.trim($('#mapSearchInput').val());
            if (!searchKey.length) return false;
            myValue = searchKey;
            setPlace();
        });
        function setPlace(){
            function myFun(){
                var pp = local.getResults().getPoi(0).point;    //获取第一个智能 search for 的结果
                var map = new BMap.Map("mapShow");
                map.enableScrollWheelZoom();
                map.addControl(new BMap.NavigationControl());
                var point = new BMap.Point(pp.lng,pp.lat);
                map.centerAndZoom(point, 15);
                setMarkers(map, pp, myValue);//  Create a label 
                setRelatePosition(map, myValue);//  Set the associated information 
                savePoint(pp.lng, pp.lat);
                addClickListener(map);
            }
            var local = new BMap.LocalSearch(map, { //智能 search for 
                onSearchComplete: myFun
            });
            local.search(myValue);
        }
    }

    //  Initialize the map 
    function getMaps(lng, lat) {
        var map = new BMap.Map("mapShow");
        map.enableScrollWheelZoom();
        map.addControl(new BMap.NavigationControl());
        var point = new BMap.Point(lng,lat);
        map.centerAndZoom(point, 15);
        var myGeo = new BMap.Geocoder();
        var position;
        function geocodeSearch(pt){
            myGeo.getLocation(pt, function(rs){
                var addComp = rs.addressComponents;
                //  street 、 Area 、 City level to find up 
                if (addComp.street.length) {
                    position = addComp.street;
                } else if (addComp.district.length) {
                    position = addComp.district;
                } else {
                    position = addComp.city;
                }
                setMarkers(map, point, position);//  Create a label 
                setRelatePosition(map, position);//  Set the associated information 
                getAcMaps(map);//  search for 
            });
        }
        geocodeSearch(point); //  Get location information based on latitude and longitude 
        addClickListener(map);
    }

    //  Create a label 
    function setMarkers(map, point, position) {
        map.clearOverlays();
        var markerls = new BMap.Marker(point);
        // Create a new label 
        var infoWindow = new BMap.InfoWindow("<span style=\"font-size:14px;\"> current location :" + position + "<br><span style=\"font-size:12px; line-height:24px;\">( prompt : Any click on the map , Choose your location )</span></span>");
        map.openInfoWindow(infoWindow, point);
        // By default ， Display window information 

        markerls.addEventListener("click", function() {
            map.openInfoWindow(infoWindow, point);
        });
        //点击标注点时 Display window information 

        markerls.enableDragging(true);
        // Enable the map mouse to drag and drop 
        map.addOverlay(markerls);
        // Add a label on the map 
    }

    // 设置左侧相关地 Area 
    function setRelatePosition(map, position) {
        var options = {
            onSearchComplete: function(results){
                //  To determine whether the state is correct 
                if (local.getStatus() == BMAP_STATUS_SUCCESS){
                    var sHtml = '';
                    for (var i = 0; i < results.getCurrentNumPois(); i ++){
                        var resultsAdr = '';
                        if (i <= 12) {
                            var ppArr = results.getPoi(i).point;
                            if (results.getPoi(i).province) {
                                resultsAdr += results.getPoi(i).province;
                            } else if (results.getPoi(i).city) {
                                resultsAdr += results.getPoi(i).city;
                            } else {
                                resultsAdr += results.getPoi(i).title;
                            }
                            sHtml += '<li data-position="'+ppArr.lng+','+ppArr.lat+','+results.getPoi(i).title+'"><div class="tit">'+results.getPoi(i).title+'</div><div class="adr">'+resultsAdr+'</div></li><div class="clear"></div>';
                        }
                    }
                    document.getElementById("mapSearchResult").innerHTML = sHtml;
                }
            }
        };
        var local = new BMap.LocalSearch(map, options);
        local.search(position);
    }

    //  Preserves the latitude and longitude of the currently selected point 
    function savePoint(lng, lat) {
        $('#lng').val(lng);
        $('#lat').val(lat);
    }

    //  Add a map click to listen 
    function addClickListener(map) {
        // Create a geocoding 
        var geoc = new BMap.Geocoder();
        map.addEventListener('click', function(e) {
            var pt = e.point;
            // Get new latitude and longitude 
            geoc.getLocation(pt, function(rs) {
                // According to the coordinates of the address description 
                var addComp = rs.addressComponents;
                var address = addComp.district + addComp.street + addComp.streetNumber;
                // Get the address 
                setMarkers(map, pt, address);
                savePoint(pt.lng,pt.lat);
                setRelatePosition(map, address);
            });
        });
    }

    //  Handle the jump link 
    function reQsMapUrl(url) {
        url = url.replace('lngVal',$('#lng').val());
        url = url.replace('latVal',$('#lat').val());
        setTimeout(function() {
            window.location = url;
        }, 50)
    }

    // 显示地图 search for 框
    function showMapDialog() {
        var mDialog = $(this).dialog({
            title: ' Select location ',
            header: false,
            footer: false,
            border: false,
            content: ['<div class="map-show">', '<div class="ms-box">', '<div class="done-group pie_about">', '<div class="btn-group">', '<div id="sure-map" class="btn_yellow c-btn gre-btn"> determine </div>', '<div id="cancel-map" class="btn_lightgray c-btn gry-btn"> cancel </div>', '<div class="clear"></div>', '</div>', '</div>', '<div>', '<div class="search-panel">', '<div class="sea-box">', '<div class="sea-container">', '<div class="sea-content">', '<input id="mapSearchInput" class="sole-input" type="text" name="word" autocomplete="off" maxlength="256" placeholder=" Search the location " value="">', '</div>', '</div>', '<button id="key-search-button" class="search-button"></button>', '<div class="clear"></div>', '</div>', '</div>', '</div>', '<div class="mb-left">', '<div class="mb-title">请选择附近地标或直接 search for 位置</div>', '<div class="mb-li" id="mapSearchResult">', '</div>', '</div>', '<div class="mb-right" id="mapShow">', '</div>', '<div class="clear"></div>', '</div>', '</div>'].join(''),
            loadFun: function() {
                // 设置默认地 Area 
                var mapLng = ''
                    , mapLat = '';
                if ($('#lng').val()) {
                    mapLng = $('#lng').val();
                    mapLat = $('#lat').val();
                } else {
                    mapLng = $('.map-lng').val();
                    mapLat = $('.map-lat').val();
                }
                savePoint(mapLng, mapLat);
                getMaps(mapLng, mapLat);
                $("#mapSearchResult").find('li').die().live('click', function (){
                    //  Left positioning 
                    var positionArr = $(this).data('position').split(',');
                    var map = new BMap.Map("mapShow");
                    map.enableScrollWheelZoom();
                    map.addControl(new BMap.NavigationControl());
                    var point = new BMap.Point(positionArr[0],positionArr[1]);
                    map.centerAndZoom(point, 15);
                    setMarkers(map, point, positionArr[2]);//  Create a label 
                    savePoint(positionArr[0], positionArr[1]);
                    addClickListener(map);
                });
                //  determine 
                $('#sure-map').die().live('click', function() {
                    $('.modal_dialog').remove();
                    $('.modal_backdrop').remove();
                    var ldDialog = $(this).dialog({
                        loading: true,
                        footer: false,
                        header: false,
                        border: false
                    });
                    reQsMapUrl(qsMapUrl);
                });
                //  cancel 
                $('#cancel-map').die().live('click', function () {
                    savePoint(mapLng, mapLat);
                    $('.modal_dialog').remove();
                    $('.modal_backdrop').remove();
                });
            }
        });
    }

    $('#popupBox').click(function() {
        showMapDialog();
    });

}(jQuery)
