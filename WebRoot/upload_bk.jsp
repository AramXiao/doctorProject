<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page import="java.io.*" %> 
<jsp:useBean id="smartupload" class="com.jspsmart.upload.SmartUpload"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'smartupload04.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0"> 
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->

</head>

<body>
<%
request.setCharacterEncoding("GBK") ;
smartupload.initialize(pageContext) ; // 初始化上传
smartupload.upload() ; // 准备上传

String name = smartupload.getRequest().getParameter("uname") ; //这个是获取备注
java.text.SimpleDateFormat formatter2=new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date Now2=new java.util.Date();
String time2=formatter2.format(Now2);
//上面是建立日期的文件夹
//下面是记录卡时间的文件名称
java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("hh-mm-ss");
java.util.Date Now=new java.util.Date();
String time=formatter.format(Now);
String name2 = time + "." + smartupload.getFiles().getFile(0).getFileExt() ; //这个是用备注的名称做文件的名称

//下面是判断文件夹是否存在,不存在就建立他
String Save_location="";
String Save_package="";
Save_package=time2;//以日期作为为文件夹名
Save_package=Save_package.trim(); //去除空格

Save_location="L:/workspace/DR/boostrap/upload/"+Save_package; //文件夹的具体路径

File ml = new File(Save_location); 
if(ml.exists()) 
{}else{ 
ml.mkdir(); 
}

//以上是判断文件夹是否存在,不存在则建立他
//以下是负责具体的上传工作
String fileName = Save_location+"/"+name2 ;
System.out.println("fileName="+fileName);
smartupload.getFiles().getFile(0).saveAs(fileName) ;
response.sendRedirect(request.getContextPath() + "/success.jsp");

for( int i=0; i<su.getFiles().getCount(); i++ ){
	File file = su.getFiles().getFile(i);
	if( !file.isMissing() ){
		out.println( "<table border='1'>" );
		out.println( "<tr><td>表单项名(FieldName)："+ file.getFieldName() +"</td></tr>" );
		out.println( "<tr><td>文件长度(Size)："+ file.getSize() +"</td></tr>" );
		out.println( "<tr><td>文件名(FileName)："+ file.getFileName() +"</td></tr>" );
		out.println( "<tr><td>文件扩展名(FileExt)："+ file.getFileExt() +"</td></tr>" );
		out.println( "<tr><td>文件全名(FilePathName)："+ file.getFilePathName() +"</td></tr>" );
		out.println( "</table>" );
	}
}


%>

<img src="upload/<%=time2%>/<%=name2%>" width="300" height="200">
</body>
</html>
