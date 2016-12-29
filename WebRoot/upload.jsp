<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<%@ page isELIgnored="false"%>
<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %> 
<jsp:useBean id="smartupload" class="com.jspsmart.upload.SmartUpload"/>

<%
request.setCharacterEncoding("utf-8") ;

String ip = "";

ip = request.getRemoteAddr();

smartupload.initialize(pageContext) ; //
smartupload.upload() ; //

String name = smartupload.getRequest().getParameter("uname") ;//
java.text.SimpleDateFormat formatter2=new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date Now2=new java.util.Date();
String time2=formatter2.format(Now2);


java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("hh-mm-ss-SSS");
java.util.Date Now=new java.util.Date();



String Save_location="";
String Save_package="";
List<String> filesPathArr = new ArrayList<String>();
File ml;
for( int i=0; i<smartupload.getFiles().getCount(); i++ ){
	
	String time=formatter.format(Now);
	String name2 = time + "-" + i + "." + smartupload.getFiles().getFile(i).getFileExt() ; //
	Save_package=time2;
	Save_package=Save_package.trim(); 
	Save_location="E:/upload/doctorWu/"+ip;
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
	filesPathArr.add(fileName);
	smartupload.getFiles().getFile(i).saveAs(fileName) ;
}
//response.sendRedirect(request.getContextPath() + "/success.jsp");

%>
<c:set var="filesPathItems" value="<%=filesPathArr%>"></c:set>
<json:object>  
     <json:array name="filesPaths" var="path" items="${filesPathItems}">  
        <json:object>  
          <json:property name="filePath" value="${path}"/>  
        </json:object>  
      </json:array>  
</json:object> 

