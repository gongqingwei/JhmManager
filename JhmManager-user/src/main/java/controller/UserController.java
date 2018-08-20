package controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import bean.Toufang;
import bean.User;
import dao.UserMapper;
import net.sf.json.JSONObject;



@Controller
public class UserController implements HandlerInterceptor {
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("salesman/login/login")
	public String login(HttpServletRequest request, HttpServletResponse response, String username, String pwd,Map map){
		User user=userMapper.userLogin(new User(username,pwd));
		if(user!=null){
			request.getSession().setAttribute("user",user);
			map.put("username", user.getUserName());
			map.put("user", user);
			return "systemseting";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/Index/login")
	public String logIn(HttpServletRequest request, HttpServletResponse response, String userName, String pwd,Map map){
		User user=userMapper.userLogin(new User(userName,pwd));
		Object userSession = request.getSession().getAttribute("user");
		User user2=(User)userSession;
		if(user!=null){
			request.getSession().setAttribute("user",user);
			return "systemseting";
		}else if(user2!=null){
			map.put("username", user2.getUserName());
			return "systemseting";
		}else{
			return "index";
		}
	}
	
	//修改登录密码  
	@RequestMapping("salesman/Index/salesmanEditPwd")
	public String updatePassword(HttpServletRequest request,HttpServletResponse response,String password,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			user.setPwd(password);
			Boolean bool = userMapper.updatePassword(user);
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
		}else{
			return "index";
		}
	}
	
	@RequestMapping("toqrcodeAdd")
	public String tosalesmanAdd(HttpServletRequest request, HttpServletResponse response,String suoluetu,String show_cishu,String title,String qrname){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(userSession!=null){
			return "qrcodeAdd";
		}
		return "index";
	}
	
	@RequestMapping("qrcodeAdd")
	public String salesmanAdd(HttpServletRequest request, HttpServletResponse response,Map map,String suoluetu,String show_cishu,String title,String qrname){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			System.out.println("userSession:"+user);
			if(show_cishu!=null){
				Toufang toufang=new Toufang();
				//字符串截取
				suoluetu=suoluetu.substring(1);
				toufang.setSuoluetu(suoluetu);
				System.out.println("qrcodeAdd>>>>>>suoluetu:"+suoluetu);
				System.out.println("qrname:"+qrname);
				toufang.setErweicodename(qrname);
				toufang.setPagetitle(title);
				toufang.setAlltoufangnum(Integer.parseInt(show_cishu));
				toufang.setAlreadytoufangnum(0);
				toufang.setUsernum(user.getId());
				toufang.setCreatedate(new Date());
				System.out.println("date:"+new Date());
				toufang.setExchangeqr(Integer.parseInt(show_cishu));
				
				userMapper.insertToufang(toufang);
			}
			List<Toufang> toufangs=userMapper.selectToufangs(user.getId());
			map.put("toufangs", toufangs);
				return "qrcodeList";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/Salesman/salesmanList")
	public String salesmanList(HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			return "salesmanList";
		}else{
			return "index";
		}
	}
	
	//更改投放次数 
	@RequestMapping("salesman/index/changeCiShu")
	public String updateToufang(HttpServletRequest request,String qrcodeid,String cishu,HttpServletResponse response,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			int num=Integer.parseInt(qrcodeid);
			int alltoufangnum = Integer.parseInt(cishu);
			Boolean bool = userMapper.updateToufang(num, alltoufangnum);
			System.out.println("bool:"+bool);
			if(bool){
				map.put("result", 1);
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
		}else{
			return "index";
		}
	}
	
	//删除一条数据 salesman/index/qrcodeDelete
	@RequestMapping("salesman/index/qrcodeDelete")
	public String deleteToufang(String id,HttpServletRequest request,HttpServletResponse response,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			int num=Integer.parseInt(id);
			Boolean bool = userMapper.deleteToufang(num);
			System.out.println("bool:"+bool);
			if(bool){
				map.put("result", 1);
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
		}else{
			return "index";
		}
	}
	
	
	@RequestMapping("salesman/Index/linkQrcode")
	public String linkQrcode(HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			return "linkQrcode";
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
	
	
	@RequestMapping("salesman/Index/qrcodeList")
	public String qrcodeList(HttpServletRequest request,Map map){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		if(user!=null){
			List<Toufang> toufangs=userMapper.selectToufangs(user.getId());
			map.put("toufangs", toufangs);
			return "qrcodeList";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("admin/Index/logoff")
	public String logoff(HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
		return "index";
	}
	
	@RequestMapping("admin/Index/updatePwd")
	public String updatePwd(HttpServletRequest request){
		Object userSession = request.getSession().getAttribute("user");
		User user=(User)userSession;
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
}
