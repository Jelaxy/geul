package spring.a04_vo;

import java.util.Date;

// spring.a04_vo.Review
public class Review {
	private String r_id;
	private String r_content;
	private int rating;
	private Date r_date;
	private String pj_id; // project 외래키
	private String u_id; // grd_user 외래키
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 외래키 제외
	public Review(String r_id, String r_content, int rating, Date r_date) {
		super();
		this.r_id = r_id;
		this.r_content = r_content;
		this.rating = rating;
		this.r_date = r_date;
	}
	
	// 외래키 포함
	public Review(String r_id, String r_content, int rating, Date r_date, String pj_id, String u_id) {
		super();
		this.r_id = r_id;
		this.r_content = r_content;
		this.rating = rating;
		this.r_date = r_date;
		this.pj_id = pj_id;
		this.u_id = u_id;
	}

	// getter/setter 메서드
	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public String getPj_id() {
		return pj_id;
	}

	public void setPj_id(String pj_id) {
		this.pj_id = pj_id;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
}
