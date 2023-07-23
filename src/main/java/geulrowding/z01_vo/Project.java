package geulrowding.z01_vo;

import java.util.Date;

public class Project {
	private String pj_id;
	private String title;
	private int price;
	private String img;
	private Date startdate;
	private Date enddate;
	public String getPj_id() {
		return pj_id;
	}
	public void setPj_id(String pj_id) {
		this.pj_id = pj_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public int getGoal_amt() {
		return goal_amt;
	}
	public void setGoal_amt(int goal_amt) {
		this.goal_amt = goal_amt;
	}
	public String getG_id() {
		return g_id;
	}
	public void setG_id(String g_id) {
		this.g_id = g_id;
	}
	public String getInfo_img() {
		return info_img;
	}
	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public Project(String pj_id, String title, int price, String img, Date startdate, Date enddate, int goal_amt,
			String g_id, String info_img, String u_id) {
		super();
		this.pj_id = pj_id;
		this.title = title;
		this.price = price;
		this.img = img;
		this.startdate = startdate;
		this.enddate = enddate;
		this.goal_amt = goal_amt;
		this.g_id = g_id;
		this.info_img = info_img;
		this.u_id = u_id;
	}
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	private int goal_amt;
	private String g_id;
	private String info_img;
	private String u_id;
}
