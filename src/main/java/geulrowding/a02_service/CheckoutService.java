package geulrowding.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import geulrowding.a03_dao.CheckoutDao;
import geulrowding.z01_vo.Address;
import geulrowding.z01_vo.Paycard_info;
import geulrowding.z01_vo.Project;

@Service
public class CheckoutService {
	@Autowired
	private CheckoutDao dao;
	
	public String insCard(Paycard_info ins) {
		return dao.insCard(ins)>0?"등록에 성공했습니다.":"등록에 실패했습니다";
	}
	
	public List<Project> getReward(String pj_id){
		System.out.println("리워드 정보");
		return dao.getReward(pj_id);
	}
	public List<Address> getAddress(String u_id){
		System.out.println("리워드 정보");
		return dao.getAddress(u_id);
	}
	
}
