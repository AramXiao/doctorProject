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
<%@ include file="pub_head.jsp"%> 
<link href="<%=ctx%>/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<!-- canvas-to-blob.min.js is only needed if you wish to resize images before upload.
     This must be loaded before fileinput.min.js -->
<script src="js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
<!-- purify.min.js is only needed if you wish to purify HTML content in your preview for HTML files.
     This must be loaded before fileinput.min.js -->
<script src="js/plugins/purify.min.js" type="text/javascript"></script>
<!-- the main fileinput plugin file -->
<script src="js/fileinput.min.js"></script>
<!-- optionally if you need a theme like font awesome theme you can include 
    it as mentioned below -->
<!--script src="themes/fa/theme.js"></script-->
<!-- optionally if you need translation for your language then include 
    locale file as mentioned below -->
<script src="js/locales/zh.js"></script>
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
$(document).ready(function(){
	initFileInput('input-id','upload.jsp');
});

function initFileInput(ctrlName, uploadUrl){
	var control = $('#' + ctrlName); 

    control.fileinput({
       language: 'zh', //设置语言
       uploadUrl: "upload.jsp", //上传的地址
       allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀,
       maxFileCount: 5,
       enctype: 'multipart/form-data',
       showUpload: true, //是否显示上传按钮
       showCaption: false,//是否显示标题
       browseClass: "btn btn-primary", //按钮样式             
       previewFileIcon: "<i class='glyphicon glyphicon-king'></i>", 
       msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
	   layoutTemplates: {
			actionZoom: '', //手机版不需要放大功能
	   },
	   progressCompleteClass: "progress-bar progress-bar-success",
        //browseClass: "btn btn-primary", //按钮样式             
       // previewFileIcon: "<i class='glyphicon glyphicon-king'></i>", 
    });
    
    
    control.on('fileuploaded', function(event, data, previewId, index) {
	    var form = data.form, files = data.files, extra = data.extra,
	        response = data.response, reader = data.reader;
	    
	    var result = data.response;
	    for(var i in result.filesPaths){
	   		alert(result.filesPaths[i].filePath);
	    }
	    alert('上传成功'); 
	    console.log('File uploaded triggered');
	});
	
	control.on('filebatchuploadsuccess', function(event, data, previewId, index) {
	    var form = data.form, files = data.files, extra = data.extra,
	        response = data.response, reader = data.reader;
	    console.log('File batch upload success');
	});
	control.on('fileuploaderror', function(event, data, msg) {
	    var form = data.form, files = data.files, extra = data.extra,
	        response = data.response, reader = data.reader;
	    console.log('File upload error');
	   // get message
	   alert(msg);
	});
	

}

</script>
</head>
<body>
 <%@ include file="header.jsp"%> 
  <section style="padding-top: 170px;">
  	<div class="outer_container">
	  	<div class="container">
		  	<form role="form" name="message" action="upload.jsp" method="post" enctype="multipart/form-data">
				</br>	
				<div class="form-group">
				<label for="sex">性别</label>
					<select>
						  <option value ="male">男</option>
						  <option value ="female">女</option>
					</select>&nbsp;
				</div>					
				<div class="form-group">
					<label for="age">年龄</label>	
					<input type="text" class="form-control" style="width: 40%;" id="age" placeholder="请输入年龄">
				</div>
				<div class="form-group">
				<label for="name">姓名</label>
					<input type="text" class="form-control" id="name" placeholder="请输入姓名"></div>				
					
				<div class="form-group">
				<label for="telphone">电话号码</label>
					<input type="tel" class="form-control" id="tel" placeholder="请输入电话号码"></div>
										
				<div class="form-group">
				<label for="name">病情</label>
					<textarea name="description" class="form-control" cols="5" rows="5" style="width: 100%;" maxlength="1000" placeholder="请输入病情"></textarea>
				</div>
				<div id="form-photo" class="form-group">
					<label for="name">上传图片</label></br>
					<div>
					<input id="input-id" name="upload[]" class="form-control" type="file" multiple class="file">
					<!-- 
					<input type="file" id="picpath0" name="picpath" style="display:none" onChange="document.getElementById('path0').value=this.value">
					<input name="path" id="path0" style="width:40%" readonly>&nbsp;<input class="btn btn-success" id="0" type="button" value="浏览" onclick="document.getElementById('picpath0').click();">
					 -->
					</div>

				</div>
				<div class="form-group">
				<!-- <input class="btn btn-success" type="button" value="更多" onclick="addDiv()">&nbsp;<button type="button" class="btn btn-success" onclick="submitMsg();">提交</button> -->
				<button type="button" class="btn btn-success" onclick="submitMsg();">提交</button>
				</div>
			</form>
	  	</div>
	  	<div class="div-expand"></div>
  	</div>
  </section>

<%@ include file="footer_top.jsp"%>

</body>
</html>