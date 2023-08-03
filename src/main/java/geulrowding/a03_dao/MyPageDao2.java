// MyPageDao2.java
package geulrowding.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import geulrowding.z01_vo.Address;
import geulrowding.z01_vo.Grd_user;
import geulrowding.z01_vo.Paycard_info;


public interface MyPageDao2 {
	@Select("SELECT * FROM grd_user WHERE u_id = #{u_id}")
	public Grd_user getGrd_user(Grd_user sch);
	
	@Update("UPDATE grd_user SET phn_num = #{phn_num}, email = #{email}\r\n"
			+ "        WHERE u_id = #{u_id}")
	public int updateGrd_user(Grd_user upt);
	
	@Select("SELECT * FROM paycard_info WHERE u_id = #{u_id}")
	public Paycard_info getPaycard_info(Paycard_info sch2);
	
	@Update("UPDATE paycard_info SET expiration_date = to_date(#{expiration_date},'yyyy-mm-dd'), cvc = #{cvc},"
			+ "				paycard_cname = #{paycard_cname}, paycard_number = #{paycard_number}\r\n"
			+ "        WHERE u_id = #{u_id}")
	public int updatePaycard_info (Paycard_info upt2);
	
	@Select("SELECT * FROM address WHERE u_id = #{u_id}")
	public Address getAddress(Address sch3);
	
	@Update("UPDATE address SET ad_detail = #{ad_detail}, ad_normal = #{ad_normal},"
			+ "				ad_num = #{ad_num} \r\n"
			+ "        WHERE u_id = #{u_id}")
	public int updateAddress (Address upt3);
}
