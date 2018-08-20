package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Loginrecord;
import bean.Toufang;
import bean.User;

public interface UserMapper {

	public User userLogin(User user);
	
	public Boolean deleteUser(@Param("id")int id);
	
	public Boolean insertUser(User user);
	
	public List<Toufang> selectAllToufang();
	
	public Boolean updatePwd(User user); 
	
	public Boolean updateToufang(@Param("alreadytoufangnum")int alreadytoufangnum,@Param("num")int num);
	
	public Boolean deleteToufang(@Param("num")int num);
	
	public Boolean insertLoginRecord(Loginrecord loginrecord);
	
	public List<Loginrecord> selectAllLoginrecord();
	
	public Boolean deleteLoginrecord(@Param("id")int id);
}
