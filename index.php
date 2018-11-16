<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<script src="jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	// in this example, 'foo' is a div containing button 'bar'
	$("#foo").click(function() {
	   alert('mouse click on div');
	});
	$("#bar").click(function(e) {
	   // mouse click on button 'bar'
	   e.stopPropagation();
	   alert('mouses click on button');
	   
	});
});  
</script>
</head>
<body>
<div>Shahbaz Khan</div>
<div>Hello</div>
<div id="foo" width="500" style="background-color:green"><button id="bar">Clik</button></div>
</body>
</html>
