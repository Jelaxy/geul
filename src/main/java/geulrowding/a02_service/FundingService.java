package geulrowding.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import geulrowding.a03_dao.FundingDao;
import geulrowding.z01_vo.ProjectGrd_user;

@Service
public class FundingService {
	@Autowired
	private FundingDao dao; // 인터페이스 = new 실제객체()

	public List<ProjectGrd_user> fundingList() {
		System.out.println("#펀딩 리스트 서비스 호출#");
		return dao.getFundingList();
	}	
	
	
	
	
	
	
	
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
