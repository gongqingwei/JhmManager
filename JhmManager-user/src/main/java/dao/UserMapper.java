package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Toufang;
import bean.User;

public interface UserMapper {

	public User userLogin(User user);
	
	public Boolean insertToufang(Toufang toufang);
	
	public List<Toufang> selectToufangs(int usernum);
	
	public Boolean updateToufang(@Param("num")int num,@Param("alltoufangnum")int alltoufangnum);
	
	public Boolean deleteToufang(@Param("num")int num);
	
	//修改密码
	public Boolean updatePassword(User user);
}
