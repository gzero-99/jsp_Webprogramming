<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

		<title>MyWorld</title>

		<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

		
	</head>
<body>
	
	<nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="/"><img data-src="holder.js/75x50" src="./resources/MyWorldMiniLogo.png"></a>
        </div>
        <div id="navbar">
          <ul class="nav navbar-nav navbar-right">
         	 <li><a href="#"><i class="glyphicon glyphicon-edit"></i><span> Edit </span></a></li>
          	<li class="active"><a href="#"><i class="glyphicon glyphicon-th"></i><span> Home </span></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-bookmark"></i><span> Forum </span></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-camera"></i><span> Photo </span></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-user"></i><span> Guest </span></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-shopping-cart"></i><span> Shop </span></a></li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="container">
	<div id="main_wrapper" class="">
		<div class="row colors" id="colors">
			<div class="col-md-15 color_wrapper">
				<div class="color" style="background-color: #f6f4f2" data-id="0" data-color="#f6f4f2" data-locked="false"><div class="swipe"></div></div>
				<div class="color_tools">
					<h3>F6F4F2</h3>
					<a href="#" class="btn btn-circle lock" data-id="0"></a>
					<a href="#" class="btn btn-circle edit" data-id="0"></a>
					<a href="#" class="btn btn-circle right" data-id="0"></a>
				</div>
			</div>
			<div class="col-md-15 color_wrapper">
				<div class="color" style="background-color: #959cac" data-id="1" data-color="#959cac" data-locked="false"><div class="swipe"></div></div>
				<div class="color_tools">
					<h3>959CAC</h3>
					<a href="#" class="btn btn-circle lock" data-id="1"></a>
					<a href="#" class="btn btn-circle edit" data-id="0"></a>
					<a href="#" class="btn btn-circle left" data-id="1"></a>
					<a href="#" class="btn btn-circle right" data-id="1"></a>
				</div>
			</div>
			<div class="col-md-15 color_wrapper">
				<div class="color" style="background-color: #cf64a3" data-id="2" data-color="#cf64a3" data-locked="false"><div class="swipe"></div></div>
				<div class="color_tools">
					<h3>CF64A3</h3>
					<a href="#" class="btn btn-circle lock" data-id="2"></a>
					<a href="#" class="btn btn-circle edit" data-id="0"></a>
					<a href="#" class="btn btn-circle left" data-id="2"></a>
					<a href="#" class="btn btn-circle right" data-id="2"></a>
				</div>
			</div>
			<div class="col-md-15 color_wrapper">
				<div class="color" style="background-color: #7a8194" data-id="3" data-color="#7a8194" data-locked="false"><div class="swipe"></div></div>
				<div class="color_tools">
					<h3>7A8194</h3>
					<a href="#" class="btn btn-circle lock" data-id="3"></a>
					<a href="#" class="btn btn-circle edit" data-id="0"></a>
					<a href="#" class="btn btn-circle left" data-id="3"></a>
					<a href="#" class="btn btn-circle right" data-id="3"></a>
				</div>
			</div>
			<div class="col-md-15 color_wrapper">
				<div class="color" style="background-color: #322848" data-id="4" data-color="#322848" data-locked="false"><div class="swipe"></div></div>
				<div class="color_tools">
					<h3>322848</h3>
					<a href="#" class="btn btn-circle lock" data-id="4"></a>
					<a href="#" class="btn btn-circle edit" data-id="0"></a>
					<a href="#" class="btn btn-circle left" data-id="4"></a>
				</div>
			</div>
			<!--  a href="#" class="btn btn-default randomize"><i class="glyphicon glyphicon-refresh"></i> Generate</a-->
		</div>
		<div id="main_wrapper_bg"></div>
	</div>
	
	<div class="row">		
		<div class="col-md-25 off-md-15 intro">
			See the color palette applied to a demo landing page. For this palette, lighter shades will appear on the left.
		</div>	
		
		<div class="col-md-25">
		For best results try selecting the main (middle) color and generating the rest of the palette.
		</div>	
	</div>
	
	</div>
	
    <iframe src="frame.html" id="subwindow" style="width: 100%; margin-top: 5em; min-height: 4000px; height: 10786px;" frameborder="0" scrolling="no"></iframe>
	
	<div class="container">
	
	<hr>
	
	<div class="row footer">
		<div class="col-md-25">
			<a href="/">MyWorld</a>
		</div>
		
		<div class="col-md-25">
		</div>
		
	</div>
	<div id="picker" class="colorPicker"><div class="twod" style="background: rgb(255, 0, 0);"><div class="pointer" style="left: 0%; top: 100%;"><div class="shape shape1"></div><div class="shape shape2"></div></div><div class="bg bg1"></div><div class="bg bg2"></div></div><div class="oned"><div class="pointer" style="top: 0%;"><div class="shape"></div></div><div class="bg"></div></div><div class="extras"><div class="currentColorContainer"><div class="currentColor" style="background: rgb(0, 0, 0);"></div></div><div class="hex"><label class="" for="colorPickerInput886"></label><input class="" type="text" maxlength="7" id="colorPickerInput886"></div></div></div>
	
	

</div></body>
</html>