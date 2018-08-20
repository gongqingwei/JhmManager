package controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.json.JsonObject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONObject;

@Controller
public class FileController implements HandlerInterceptor{

@RequestMapping("test")
public String test(@RequestParam MultipartFile file,HttpServletRequest request,HttpServletResponse response,Map map) throws IOException{
	System.out.println("comming!");
	String path = request.getSession().getServletContext().getRealPath("/images");
	String path2=path.replace("-user", "");
	System.out.println("path>>"+path);
 
		String fileName = file.getOriginalFilename();
		Date currentTime = new Date();  
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");  
	    String dateString = formatter.format(currentTime);
		fileName=dateString+fileName;
		System.out.println("fileName>>"+fileName);
	
	File dir = new File(path, fileName);
	File dir2 = new File(path2,fileName);
	
	System.out.println("dir.exists()>>"+dir.exists());
	if(!dir.exists()){
		dir.mkdirs();
		dir2.mkdirs();
		String suoluetu="images/"+fileName;
		map.put("suoluetu",suoluetu);
		System.out.println("suoluetu>>>>>>>>>>>"+suoluetu);
		JSONObject  json = JSONObject. fromObject(map);
		try {
            /*设置编码格式，返回结果
            * ***/
           response.setContentType( "text/html;charset=UTF-8");
           response.getWriter().write( json.toString());
      } catch (IOException e1) {
           e1.printStackTrace();
      }
	}
	System.out.println("dir.exists()>>"+dir.exists());
//		MultipartFile自带的解析方法
	file.transferTo(dir);
	file.transferTo(dir2);
	return null;
}



@Override
public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
		throws Exception {
	// TODO Auto-generated method stub
	
}

@Override
public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
		throws Exception {
	// TODO Auto-generated method stub
	
}

@Override
public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
	// TODO Auto-generated method stub
	return false;
}
}
