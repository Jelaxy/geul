package geulrowding.a02_service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import geulrowding.a03_dao.FundingDao;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Grd_user;
import geulrowding.z01_vo.ProjectGrd_user;

@Service
public class FundingService {
	@Autowired
	private FundingDao dao; // 인터페이스 = new 실제객체()

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
	public List<ProjectGrd_user> myfunding(String u_id) {
		return dao.getMyfunding(u_id);
	}
//	public String checkId(String u_id) {
//		return dao.checkId(u_id)>0?"등록불가":"등록가능";
//	}

	
//	public void funding() {
//		System.out.println("#펀딩 리스트 서비스 호출#");
//		for(ProjectGrd_user pg:dao.getFundingList()) {
//			Project p = pg.getProject();
//			Grd_user g = pg.getGrd_user();	
//			System.out.print(p.getG_id()+"\t");
//			System.out.print(p.getGoal_amt()+"\t");
//			System.out.print(p.getImg()+"\t");
//			System.out.print(p.getInfo_img()+"\t");
//			System.out.print(p.getPj_id()+"\t");
//			System.out.print(p.getPrice()+"\t");
//			System.out.print(p.getTitle()+"\t");
//			System.out.print(p.getU_id()+"\t");
//			System.out.print(p.getEnddate()+"\t");
//			System.out.print(p.getStartdate()+"\t");
//			System.out.print(g.getAuthorization()+"\t");
//			System.out.print(g.getEmail()+"\t");
//			System.out.print(g.getName()+"\t");
//			System.out.print(g.getNickname()+"\t");
//			System.out.print(g.getPass()+"\t");
//			System.out.print(g.getPhn_num()+"\t");
//			System.out.print(g.getU_id()+"\n");
//		}
		

	
	
	
}
