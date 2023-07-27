package geulrowding.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.ProjectGrd_user;

public interface FundingDao {
	
	public List<ProjectGrd_user> getFundingList();
	public List<ProjectGrd_user> getFunding_detail(String pj_id);
	
	@Select("select c.C_ID , c.C_CONTENT ,c.U_ID , TO_DATE(c.C_DATE, 'YY-MM-DD') AS C_DATE ,gu.NICKNAME \r\n"
			+ "FROM COMMUNITY c\r\n"
			+ "JOIN GRD_USER gu ON c.U_ID = gu.U_ID \r\n"
			+ "WHERE PJ_ID = #{pj_id} order by c.C_DATE desc")
	public List<Community> getCommunityList(String pj_id);
	
	@Insert("INSERT INTO COMMUNITY c values('c-'||c_id.nextval,#{c_content},#{pj_id},#{u_id},sysdate)")
	public int insertCommunity(Community ins);
}
