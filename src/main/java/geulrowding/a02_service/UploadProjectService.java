package geulrowding.a02_service;




import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import geulrowding.a03_dao.FundingDao;
import geulrowding.a03_dao.UploadProjectDao;
import geulrowding.z01_vo.Community;
import geulrowding.z01_vo.Notice;
import geulrowding.z01_vo.Project;
import geulrowding.z01_vo.ProjectGrd_user;


@Service
public class UploadProjectService {
	@Autowired
	private UploadProjectDao dao; // 인터페이스 = new 실제객체()

	private String img_path = "C:/Users/PC/git/geul/src/main/webapp/assets/img/project/thumbnail/";
	private String info_img_path = "C:/Users/PC/git/geul/src/main/webapp/assets/img/project/detail/";
	
	public String uploadProject(MultipartFile[] imgFile,
								MultipartFile[] info_imgFile,Project ins) {
		String msg = "업로드 성공";
		// 썸네일 이미지 업로드 처리
		for(MultipartFile imgfile : imgFile) {
			String img_fname = imgfile.getOriginalFilename();
			File imgFileDestination = new File(img_path + img_fname);
			try {
				imgfile.transferTo(imgFileDestination);
				// 썸네일 이미지 파일명을 ins 객체의 img 속성에 설정
				ins.setImg(img_fname);
			} catch (IllegalStateException e) {
				msg = "예외발생1:" + e.getMessage();
			} catch (IOException e) {
				msg = "예외발생2:" + e.getMessage();
			}
			System.out.println("썸네일 업로드 성공");
		}
		// 프로젝트 상세 이미지 업로드 처리
		for(MultipartFile info_imgfile : info_imgFile) {
			String info_img_fname = info_imgfile.getOriginalFilename();
			File infoImgFileDestination = new File(info_img_path + info_img_fname);
			try {
				info_imgfile.transferTo(infoImgFileDestination);
				// 썸네일 이미지 파일명을 ins 객체의 img 속성에 설정
				ins.setInfo_img(info_img_fname);
			} catch (IllegalStateException e) {
				msg = "예외발생1:" + e.getMessage();
			} catch (IOException e) {
				msg = "예외발생2:" + e.getMessage();
			}
			System.out.println("상세이미지 업로드 성공");
		}
		// 프로젝트 정보 데이터베이스에 저장
		if (msg.equals("업로드 성공")) {	
			dao.insertProject(ins);
			System.out.println("프로젝트 DB저장 성공");
		}
		return msg;
	}

}
