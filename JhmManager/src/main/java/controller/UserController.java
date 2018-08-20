package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import bean.Loginrecord;
import bean.Toufang;
import bean.User;
import dao.UserMapper;
import net.sf.json.JSONObject;

@Controller
public class UserController implements HandlerInterceptor {
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response, String userName, String pwd){
		User user=userMapper.userLogin(new User(userName,pwd));
		if(user!=null){
			request.getSession().setAttribute("user",user);
			Loginrecord lr=new Loginrecord();
			lr.setCreateusertime(user.getCreateusertime());
			lr.setLastloginip(getIPaddress());
			lr.setLastlogintime(new Date());
			lr.setUsername(user.getUserName());
			Boolean bool =userMapper.insertLoginRecord(lr);
			return "systemseting";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/Index/login")
	public String logIn(HttpServletRequest request, HttpServletResponse response, String userName, String pwd){
		User user=userMapper.userLogin(new User(userName,pwd));
		Object userSession = request.getSession().getAttribute("user");
		user=(User)userSession;
		if(user!=null){
			request.getSession().setAttribute("true",user);
			Loginrecord lr=new Loginrecord();
			lr.setCreateusertime(user.getCreateusertime());
			lr.setLastloginip(getIPaddress());
			lr.setLastlogintime(new Date());
			lr.setUsername(user.getUserName());
			Boolean bool =userMapper.insertLoginRecord(lr);
			return "systemseting";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/Salesman/salesmanAdd")
	public String salesmanAdd(HttpServletRequest request, HttpServletResponse response, String userName, String pwd){
		try {
			if(userName!=null){
				userName= new String( userName.getBytes("ISO-8859-1") , "UTF-8");
			}
			if(pwd!=null){
				pwd= new String( pwd.getBytes("ISO-8859-1") , "UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		System.out.println("userSession:"+user);
		if(userSession!=null){
			if(userName!=null && pwd!=null){
				userMapper.insertUser(new User(userName,pwd));
			}
			return "salesmanAdd";
		}
		return "index";
	}
	
	@RequestMapping("admin/Salesman/salesmanEditPwd")
	public String salesmanEditPwd(HttpServletRequest request, HttpServletResponse response, int id, String password,Map map){
		try {
			if(password!=null){
				password= new String( password.getBytes("ISO-8859-1") , "UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		System.out.println("userSession:"+user);
		if(user!=null){
			if(password!=null){
				user.setPwd(password);
				Boolean bool = userMapper.updatePwd(user);
				if(bool){
					map.put("result", 0);
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
			}
			
			return null;
		}
		return "index";
	}
	
	
	@RequestMapping("admin/Salesman/salesmanDelete")
	public String salesmanDelete(HttpServletRequest request, HttpServletResponse response, int id,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		System.out.println("userSession:"+user);
		if(user!=null){
				Boolean bool = userMapper.deleteLoginrecord(id);
				if(bool){
					map.put("result", 0);
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
			
			
			return null;
		}
		return "index";
	}
	@RequestMapping("admin/Salesman/salesmanList")
	public String salesmanList(HttpServletRequest request,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			List<Loginrecord> loginrecords = userMapper.selectAllLoginrecord();
			map.put("loginrecords", loginrecords);
			map.put("userid",user.getId());
			return "salesmanList";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/System/systemSeting")
	public String systemSeting(HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			return "systemseting";
		}else{
			return "index";
		}
	}
	
	
	@RequestMapping("admin/Qrcode/qrcodeList")
	public String qrcodeList(Map map,HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			List<Toufang> toufangs=new ArrayList<>();
			toufangs=userMapper.selectAllToufang();
			if(toufangs!=null){
				map.put("toufangs", toufangs);
			}
			return "qrcodeList";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/Index/logoff")
	public String logoff(){
		return "index";
	}
	
	@RequestMapping("admin/Index/updatePwd")
	public String updatePwd(HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			return "updatePwd";
		}
		return "index";
	}

	@RequestMapping("updatePwd")
	public String updatepwd(String name,String password,String password2,String password3,HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null&&user.getPwd().equals(password)&&password2.equals(password3)){
			user.setPwd(password2);
			Boolean bool = userMapper.updatePwd(user);
			if(bool){
				return "index";
			}else{
				return "updatePwd";
			}
		}
		return "index";
	}
	
	@RequestMapping("admin/Qrcode/changeCiShu")
	public String changeCishu(HttpServletRequest request,HttpServletResponse response,int cishu,int qrcodeid,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			Boolean bool = userMapper.updateToufang(cishu,qrcodeid);
			if(bool){
				map.put("result", 0);
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
			return null;
		}
		
		return "index";
	}
	
	@RequestMapping("admin/Qrcode/qrcodeDelete")
	public String qrcodeDelete(HttpServletRequest request,HttpServletResponse response,int id,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			Boolean bool = userMapper.deleteToufang(id);
			if(bool){
				map.put("result", 0);
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
			return null;
		}
		
		return "index";
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
	
	
	public String getIPaddress(){
		InetAddress addr=null;
		try {
			addr = InetAddress.getLocalHost();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
        String ip=addr.getHostAddress().toString();
		return ip;
	}
	
	
}
