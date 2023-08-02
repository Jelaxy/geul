package geulrowding.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import geulrowding.z01_vo.Author_detail;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Grd_user;
import geulrowding.z01_vo.ProjectGrd_user;

public interface YenaDao {
	
	public List<ProjectGrd_user> getFundingList();
	public List<ProjectGrd_user> getFunding_detail(String pj_id);
	
	@Select("select c.C_ID , c.C_CONTENT ,c.U_ID , c.C_DATE ,gu.NICKNAME \r\n"
			+ "FROM COMMUNITY c\r\n"
			+ "JOIN GRD_USER gu ON c.U_ID = gu.U_ID \r\n"
			+ "WHERE PJ_ID = #{pj_id} order by c.C_DATE desc")
	public List<Community> getCommunityList(String pj_id);

	public Grd_user login(Grd_user mem);
	 @Insert(" INSERT INTO grd_user\n"
				+ "      (     u_id\n"
				+ "         , pass\n"
				+ "         , name\n"
				+ "         , nickname\n"
				+ "         , phn_num\n"
				+ "         , email\n"
				+ "         , authorization\n"
				+ "      )VALUES (\n"
				+ "           #{u_id}\n"
				+ "         , #{pass}\n"
				+ "         , #{name}\n"
				+ "         , #{nickname}\n"
				+ "         , #{phn_num}\n"
				+ "         , #{email}\n"
				+ "         , '일반'\n"
				+ "      )")
		public int insertMem(Grd_user ins);
	 public Author_detail makerpage(Author_detail detail);
	 
	 @Select("	SELECT count(*)\r\n"
				+ "	FROM grd_user\r\n"
				+ "	WHERE LOWER(u_id)=lower(#{u_id})")
		public int checkId(@Param("u_id") String u_id);
		
	
//	public List<ProjectGrd_user> getmyprojectList();
}
