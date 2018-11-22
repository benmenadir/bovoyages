<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="openweathermap-widget-24"></div>
<script>
	window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];
	window.myWidgetParam.push({
		id : 24,
		cityid : '${destination.idcity}',
		appid : '24f840d9f65eaefc64ca5d6c887b75c8',
		units : 'metric',
		containerid : 'openweathermap-widget-24',
	});
	(function() {
		var script = document.createElement('script');
		script.async = true;
		script.charset = "utf-8";
		script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(script, s);
	})();
</script>