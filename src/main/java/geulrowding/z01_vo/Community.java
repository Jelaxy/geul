package geulrowding.z01_vo;

import java.util.Date;

public class Community {
	private String c_id;
	private String c_content;
	private String pj_id;
	private String u_id;
	private Date c_date;
	private String nickname;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Community() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	public Community(String c_id, String c_content, String pj_id, String u_id, Date c_date) {
		super();
		this.c_id = c_id;
		this.c_content = c_content;
		this.pj_id = pj_id;
		this.u_id = u_id;
		this.c_date = c_date;
	}
}
