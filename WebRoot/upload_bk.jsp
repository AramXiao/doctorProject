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
smartupload.initialize(pageContext) ; // ��ʼ���ϴ�
smartupload.upload() ; // ׼���ϴ�

String name = smartupload.getRequest().getParameter("uname") ; //����ǻ�ȡ��ע
java.text.SimpleDateFormat formatter2=new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date Now2=new java.util.Date();
String time2=formatter2.format(Now2);
//�����ǽ������ڵ��ļ���
//�����Ǽ�¼��ʱ����ļ�����
java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("hh-mm-ss");
java.util.Date Now=new java.util.Date();
String time=formatter.format(Now);
String name2 = time + "." + smartupload.getFiles().getFile(0).getFileExt() ; //������ñ�ע���������ļ�������

//�������ж��ļ����Ƿ����,�����ھͽ�����
String Save_location="";
String Save_package="";
Save_package=time2;//��������ΪΪ�ļ�����
Save_package=Save_package.trim(); //ȥ���ո�

Save_location="L:/workspace/DR/boostrap/upload/"+Save_package; //�ļ��еľ���·��

File ml = new File(Save_location); 
if(ml.exists()) 
{}else{ 
ml.mkdir(); 
}

//�������ж��ļ����Ƿ����,������������
//�����Ǹ��������ϴ�����
String fileName = Save_location+"/"+name2 ;
System.out.println("fileName="+fileName);
smartupload.getFiles().getFile(0).saveAs(fileName) ;
response.sendRedirect(request.getContextPath() + "/success.jsp");

for( int i=0; i<su.getFiles().getCount(); i++ ){
	File file = su.getFiles().getFile(i);
	if( !file.isMissing() ){
		out.println( "<table border='1'>" );
		out.println( "<tr><td>������(FieldName)��"+ file.getFieldName() +"</td></tr>" );
		out.println( "<tr><td>�ļ�����(Size)��"+ file.getSize() +"</td></tr>" );
		out.println( "<tr><td>�ļ���(FileName)��"+ file.getFileName() +"</td></tr>" );
		out.println( "<tr><td>�ļ���չ��(FileExt)��"+ file.getFileExt() +"</td></tr>" );
		out.println( "<tr><td>�ļ�ȫ��(FilePathName)��"+ file.getFilePathName() +"</td></tr>" );
		out.println( "</table>" );
	}
}


%>

<img src="upload/<%=time2%>/<%=name2%>" width="300" height="200">
</body>
</html>
