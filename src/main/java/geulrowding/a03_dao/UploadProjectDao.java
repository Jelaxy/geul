package geulrowding.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Notice;
import geulrowding.z01_vo.Project;
import geulrowding.z01_vo.ProjectGrd_user;

public interface UploadProjectDao {
	
	@Insert("INSERT INTO PROJECT VALUES ('pj-'||pj_id.nextval, #{title}, #{price}, #{img}, "
			+ "TO_DATE(#{startdateS}, 'YYYY-MM-DD'), TO_DATE(#{enddateS}, 'YYYY-MM-DD'), #{goal_amt}, #{g_id}, #{Info_img} ,#{u_id}, #{description})")
	public void insertProject(Project ins);
}	
