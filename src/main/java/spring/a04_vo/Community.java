package spring.a04_vo;

import java.util.Date;

// spring.a04_vo.Community
public class Community {
	private String c_id;
	private String c_content;
	private Date c_date;
	private String pj_id; // project 외래키
	private String u_id; // grd_user 외래키
	
	public Community() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 외래키 제외
	public Community(String c_id, String c_content, Date c_date) {
		super();
		this.c_id = c_id;
		this.c_content = c_content;
		this.c_date = c_date;
	}
	
	// 외래키 포함
	public Community(String c_id, String c_content, Date c_date, String pj_id, String u_id) {
		super();
		this.c_id = c_id;
		this.c_content = c_content;
		this.c_date = c_date;
		this.pj_id = pj_id;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
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
