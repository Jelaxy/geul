package geulrowding.z01_vo;

import java.util.Date;

public class Notice {
	private String n_id;
	private String n_content;
	private String pj_id;
	private Date n_date;
	private String n_title;
	private String nickname;

	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Notice(String n_id, String n_content, String pj_id, Date n_date, String n_title, String nickname) {
		super();
		this.n_id = n_id;
		this.n_content = n_content;
		this.pj_id = pj_id;
		this.n_date = n_date;
		this.n_title = n_title;
		this.nickname = nickname;
	}
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(String n_id, String n_content, String pj_id, Date n_date, String n_title) {
		super();
		this.n_id = n_id;
		this.n_content = n_content;
		this.pj_id = pj_id;
		this.n_date = n_date;
		this.n_title = n_title;
	}
	public String getN_id() {
		return n_id;
	}
	public void setN_id(String n_id) {
		this.n_id = n_id;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getPj_id() {
		return pj_id;
	}
	public void setPj_id(String pj_id) {
		this.pj_id = pj_id;
	}
	public Date getN_date() {
		return n_date;
	}
	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	
}