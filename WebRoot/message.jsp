<%@ include file="header.jsp"%>
<!DOCTYPE html>

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> 
  <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en"> 
  <![endif]-->
  <!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
  <!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
  
  <head>
    <title>您的皮肤健康顾问</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="author" content="templatemo">
    <meta charset="UTF-8">

</head>
<script>
var i=0;
function addDiv(){
	i++;
	//var photoDiv = 
	//alert(document.getElementById("form-photo").innerHTML);
	//document.getElementById("form-photo").innerHTML = document.getElementById("form-photo").innerHTML + photoDiv;
	
	
	var photoDiv = document.createElement("div");
	photoDiv.id="photo_"+i; 
	photoDiv.innerHTML = "</br><input type=\"file\" name=\"picpath\" id=\"picpath" + i + "\" style=\"display:none\" onChange=\"document.getElementById('path" + i + "').value=this.value\"><input id=\"path" + i + "\" name=\"path\" style=\"width:40%\" readonly>&nbsp;<input id=\"" + i + "\" class=\"btn btn-success\" type=\"button\" value=\"浏览\" onclick=\"document.getElementById('picpath'+this.id).click()\">&nbsp;<input id=\"_" + i + "\" class=\"btn btn-success\" type=\"button\" value=\"删除\" onclick=\"removeDiv(this)\">";
	document.getElementById("form-photo").appendChild(photoDiv); 
}

function removeDiv(obj){
	//alert(obj.id);
	var index = 0;
	index = obj.id.substring(1, obj.id.length);
	//alert(index);
	var photoDiv = document.getElementById("photo_"+index);
	document.getElementById("form-photo").removeChild(photoDiv); 
	
}

function submitMsg(){
	var photos = document.getElementsByName("path");
	//alert(photos.length);
	for(var i=0; i<photos.length; i++){
		if(photos[i].value==""){
			alert("请选择需要上传的照片！");
			return;
		}
	}
	document.message.submit();
}
</script>

<body>
  
  <section style="padding-top: 170px;">
  	<div class="outer_container">
	  	<div class="container">
		  	<form name="message" action="upload.jsp" method="post" enctype="multipart/form-data">
				</br>	
				<div class="form-group">
				<label for="sex">性别</label>
					<select>
						  <option value ="male">男</option>
						  <option value ="female">女</option>
					</select>&nbsp;
				<label for="age">年龄</label>	
					<input type="text" id="age" placeholder="请输入年龄">
				</div>					
				
				<div class="form-group">
				<label for="name">姓名</label>
					<input type="text" class="form-control" id="name" placeholder="请输入姓名"></div>				
					
				<div class="form-group">
				<label for="telphone">电话号码</label>
					<input type="tel" class="form-control" id="tel" placeholder="请输入电话号码"></div>
										
				<div class="form-group">
				<label for="name">病情</label>
					<textarea name="description" cols="5" rows="5" style="width: 100%;" maxlength="1000" placeholder="请输入病情"></textarea>
				</div>
				<div id="form-photo">
					<label for="name">上传图片</label></br>
					<div>
					<input type="file" id="picpath0" name="picpath" style="display:none" onChange="document.getElementById('path0').value=this.value">
					<input name="path" id="path0" style="width:40%" readonly>&nbsp;<input class="btn btn-success" id="0" type="button" value="浏览" onclick="document.getElementById('picpath0').click();">
					</div>

				</div>
				</br>
				<div style="float: left; padding-right: 5px; padding-bottom: 5px;">
				<input class="btn btn-success" type="button" value="更多" onclick="addDiv()">&nbsp;<button type="button" class="btn btn-success" onclick="submitMsg();">提交</button>
				</div>
			</form>
	  	</div>
	  	<div class="div-expand"></div>
  	</div>
  </section>

	<%@ include file="footer_top.jsp"%>

</body>
</html>