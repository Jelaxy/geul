package geulrowding.a02_service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import geulrowding.a03_dao.YenaDao;
import geulrowding.z01_vo.Author_detail;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Grd_user;
import geulrowding.z01_vo.ProjectGrd_user;

@Service
public class YenaService {
	@Autowired
	private YenaDao dao; // 인터페이스 = new 실제객체()

	public List<ProjectGrd_user> fundingList() {
		System.out.println("#펀딩 리스트 서비스 호출#");
		return dao.getFundingList();
	}	
	public List<ProjectGrd_user> fundingDetail(String pj_id) {
		System.out.println("#펀딩 디테일 서비스 호출#");
		return dao.getFunding_detail(pj_id);
	}
	public List<Community> communityList(String pj_id) {
		System.out.println("#펀딩 커뮤니티 호출#");
		return dao.getCommunityList(pj_id);
	}
	
	public Grd_user login(Grd_user mem) {
		return dao.login(mem);
	}
	
    public String insertMem(Grd_user ins) {
		return dao.insertMem(ins)>0?"등록성공":"등록되지 않음" ;
	}	
    public Author_detail makerpage(Author_detail dt) {
    	return dao.makerpage(dt);
    }
    public String checkId(String u_id) {
		return dao.checkId(u_id)>0?"등록불가":"등록가능";
	}
	
	
//	public List<ProjectGrd_user> myprojectList() {
//		return dao.getmyprojectList();
//	}
//		

	
	
	
}
