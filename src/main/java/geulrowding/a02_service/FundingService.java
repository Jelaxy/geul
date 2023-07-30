package geulrowding.a02_service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import geulrowding.a03_dao.FundingDao;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Notice;
import geulrowding.z01_vo.ProjectGrd_user;

@Service
public class FundingService {
	@Autowired
	private FundingDao dao; // 인터페이스 = new 실제객체()

	public List<ProjectGrd_user> fundingList() {
		System.out.println("#펀딩 리스트 서비스 호출#");
		return dao.getFundingList();
	}	
	public List<ProjectGrd_user> OpenList() {
		System.out.println("#오픈예정 펀딩 리스트 서비스 호출#");
		return dao.getOpenList();
	}		
	public List<ProjectGrd_user> fundingDetail(String pj_id) {
		System.out.println("#펀딩 디테일 서비스 호출#");
		return dao.getFunding_detail(pj_id);
	}
	public List<Community> communityList(String pj_id) {
		System.out.println("#펀딩 커뮤니티 호출#");
		return dao.getCommunityList(pj_id);
	}
	public String insertcommunity(Community ins) {
		return dao.insertCommunity(ins)>0?"등록성공":"등록되지 않음";
	}
	public List<Notice> noticeList(String pj_id) {
		System.out.println("#펀딩 새소식 호출#");
		return dao.getNoticeList(pj_id);
	}
	

	
}
