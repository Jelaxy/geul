package geulrowding.a03_dao;

import java.util.List;

import geulrowding.z01_vo.Address;
import geulrowding.z01_vo.Paycard_info;
import geulrowding.z01_vo.Project;

public interface CheckoutDao {
	public int insCard(Paycard_info ins);
	public List<Project> getReward(String pj_id);
	public List<Address> getAddress(String u_id);
}
