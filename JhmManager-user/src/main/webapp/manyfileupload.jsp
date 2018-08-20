<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Insert title here</title>  
<script type="text/javascript">  
    i = 1;  
    j = 1;  
    $(document).ready(function(){           
        $("#btn_add").click(function(){  
            document.getElementById("newUpload").
            innerHTML+='<div id="div_'+j+'"><input  name="file_'+j+'" type="file"  /><input type="button" value="删除"  onclick="del('+j+')"/></div>';  
              j = j + 1;  
        });  
    });  
    
    function del(o){  
         document.getElementById("newUpload").removeChild(document.getElementById("div_"+o));  
    }  
  
</script>  
</head>  
<body>  
     <center><a href="index.jsp">返回</a>
     <hr/>
          <h2>springMVC包装类上传多文件:建议使用 -效率高,速度快</h2>   
    <form name="frmspring" action="springmvcpackingupload.action" enctype="multipart/form-data" method="post"">  
        <div id="newUpload">  
            <input type="file" name="file_0">  
        </div>  
        <input type="button" id="btn_add" value="增加一行" >  
        <input type="submit" value="上传" >   
    </form>
    <h2>上传多文件:固定不同文件名</h2>  
          <form action="upSolidFile.action" method="post" enctype="multipart/form-data"> 
                文件:<input type="file" name="f_0"/><br/>
                 文件:<input type="file" name="f_1"/><br/>
                 文件:<input type="file" name="f_2"/><br/> 
      <input type="submit" value="上传"/>
   </form>   
    </center>  
 </body> 
</html>  