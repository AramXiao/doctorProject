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

String ip = "";

ip = request.getRemoteAddr();

smartupload.initialize(pageContext) ; // ��ʼ���ϴ�
smartupload.upload() ; // ׼���ϴ�

String name = smartupload.getRequest().getParameter("uname") ; //����ǻ�ȡ��ע
java.text.SimpleDateFormat formatter2=new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date Now2=new java.util.Date();
String time2=formatter2.format(Now2);
//�����ǽ������ڵ��ļ���
//�����Ǽ�¼��ʱ����ļ�����
java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("hh-mm-ss-SSS");
java.util.Date Now=new java.util.Date();


//�������ж��ļ����Ƿ����,�����ھͽ�����
String Save_location="";
String Save_package="";
File ml;
for( int i=0; i<smartupload.getFiles().getCount(); i++ ){
	
	String time=formatter.format(Now);
	String name2 = time + "-" + i + "." + smartupload.getFiles().getFile(i).getFileExt() ; //������ñ�ע���������ļ�������
	Save_package=time2;//��������ΪΪ�ļ�����
	Save_package=Save_package.trim(); //ȥ���ո�
	Save_location="L:/workspace/DR/boostrap/upload/"+ip; //�ļ��еľ���·��
	ml = new File(Save_location); 
	if(ml.exists()) 
	{}else{ 
	ml.mkdir(); 
	}
	Save_location=Save_location+"/"+Save_package;
	ml = new File(Save_location); 
	if(ml.exists()) 
	{}else{ 
	ml.mkdir(); 
	}
	String fileName = Save_location+"/"+name2 ;
	System.out.println("fileName="+fileName);
	smartupload.getFiles().getFile(i).saveAs(fileName) ;
}

response.sendRedirect(request.getContextPath() + "/success.jsp");


%>

</body>
</html>
