function baidumap(com_companyname,com_address,com_map_x,com_map_y,com_map_zoom,c_map_x,c_map_y,c_map_zoom){
	var map = new BMap.Map("container");
	var infoWindow = '';
	var overlays = [];
	var overlaycomplete = function(e){
		clearAll();
	    overlays.push(e.overlay);
	    var point = new BMap.Point(e.overlay.point.lng, e.overlay.point.lat);
		map.centerAndZoom(point, com_map_zoom);
		map.openInfoWindow(infoWindow,point);
		map.setCenter(point);
	    var geoc = new BMap.Geocoder();
		geoc.getLocation(point, function(rs){
			var addComp = rs.addressComponents;
			G('suggestId').value = addComp.province+addComp.city+addComp.district+addComp.street+addComp.streetNumber;
			infoWindowSet();
		}); 
		G("map_x").value=e.overlay.point.lng;
		G("map_y").value= e.overlay.point.lat;
		G("map_zoom").value=  map.getZoom();
		      
	};
	openDraw();
	function openDraw(){
		// Instantiate the mouse drawing tool 
	    var drawingManager = new BMapLib.DrawingManager(map, {
	        isOpen: true, // Whether to open the drawing mode 
	        enableDrawingTool: false, // Whether to display the toolbar 
	        drawingToolOptions: {
	            anchor: BMAP_ANCHOR_TOP_RIGHT, // position 
	            offset: new BMap.Size(5, 5), // Deviation from value 
		        drawingTypes : [
		            BMAP_DRAWING_MARKER
		        ]
	        },
	    });  
	    drawingManager.setDrawingMode(BMAP_DRAWING_MARKER);
		 // Add a mouse draw tool to listen to events ， Used to get the drawing results 
	    drawingManager.addEventListener('overlaycomplete', overlaycomplete);
	}
	function clearAll() {
		for(var i = 0; i < overlays.length; i++){
	        map.removeOverlay(overlays[i]);
	    }
	    map.removeOverlay(qs_marker);
	    overlays.length = 0   
	}

	function setPlace(){
		map.clearOverlays();    // Clear all cover on the map 
		function myFun(){
			var pp = local.getResults().getPoi(0).point;    // Get the results of the first smart search 
			map.centerAndZoom(pp, 18);
			map.addOverlay(new BMap.Marker(pp));    // Add annotations 
			G("map_x").value=pp.lng;
			G("map_y").value= pp.lat;
			G("map_zoom").value=  map.getZoom();
		}
		var local = new BMap.LocalSearch(map, { // Intelligent search 
		  onSearchComplete: myFun
		});
		local.search(G('suggestId').value);
		openDraw();
	}
	$("#search").live('click',function(){
		if(G('suggestId').value==''){
			disapperTooltip("remind", " Please enter the full address ");return false;
		}
		setPlace();
	});
	function G(id) {
		return document.getElementById(id);
	}

	var ac = new BMap.Autocomplete(    // Create an auto-complete object 
	{
		"input" : "suggestId",
		"location" : map
	});
	ac.setInputValue(com_address);
	ac.addEventListener("onconfirm", function(e) {    // Mouse click on the drop-down list after the event 
		// alert(1);
		var _value = e.item.value;
		myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
		G('suggestId').value = myValue;
	});
	// If you have already set the label 
	function infoWindowSet(){
		var opts = {
		width : 300,     //  Information window width 
		height: 60,     //  Information window height 
		title : com_companyname  //  Information window title 
		}
		infoWindow = new BMap.InfoWindow("<span style='font-size:12px;'>（ prompt ：任意点击地图或通过精确搜索选择您的 position ）</span>", opts);
	}
	infoWindowSet();
	// If set ， Display the parameters 
	if(com_map_x && com_map_y && com_map_zoom>0){
	var point = new BMap.Point(com_map_x, com_map_y);
	map.centerAndZoom(point, com_map_zoom);
	var qs_marker = new BMap.Marker(point);        //  Create a label 
	map.addOverlay(qs_marker);
	map.openInfoWindow(infoWindow,point);
	map.setCenter(point);
	G("map_x").value=com_map_x;
	G("map_y").value= com_map_y;
	G("map_zoom").value=  com_map_zoom;
	}else{
	var point = new BMap.Point(c_map_x,c_map_y);
	map.centerAndZoom(point, c_map_zoom);
	map.setCenter(point);
	}
	map.addControl(new BMap.NavigationControl());// Add fish bones 
	map.enableScrollWheelZoom();// Enable wheel zoom ， Disabled by default 。

}