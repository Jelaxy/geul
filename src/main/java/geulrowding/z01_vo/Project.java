package geulrowding.z01_vo;

import java.util.Date;

public class Project {
	private String pj_id;
	private String title;
	private String description;
	private int price;
	private String img;
	private int goal_amt;
	private int now_amt;
	private double achv_percent;
	private String g_id;
	private String info_img;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	private String u_id;
	private Date startdate;
	private Date enddate;
	private int dday;
	//카테고리 이름..
	private String g_name;
	
	public Project(String pj_id, String title, String description, int price, String img, int goal_amt, int now_amt,
			double achv_percent, String g_id, String info_img, String u_id, Date startdate, Date enddate, int dday,
			String g_name) {
		super();
		this.pj_id = pj_id;
		this.title = title;
		this.description = description;
		this.price = price;
		this.img = img;
		this.goal_amt = goal_amt;
		this.now_amt = now_amt;
		this.achv_percent = achv_percent;
		this.g_id = g_id;
		this.info_img = info_img;
		this.u_id = u_id;
		this.startdate = startdate;
		this.enddate = enddate;
		this.dday = dday;
		this.g_name = g_name;
	}
	public String getPj_id() {
		return pj_id;
	}
	public void setPj_id(String pj_id) {
		this.pj_id = pj_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
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
	public int getGoal_amt() {
		return goal_amt;
	}
	public void setGoal_amt(int goal_amt) {
		this.goal_amt = goal_amt;
	}
	public int getNow_amt() {
		return now_amt;
	}
	public void setNow_amt(int now_amt) {
		this.now_amt = now_amt;
	}
	public double getAchv_percent() {
		return achv_percent;
	}
	public void setAchv_percent(double achv_percent) {
		this.achv_percent = achv_percent;
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
	public int getDday() {
		return dday;
	}
	public void setDday(int dday) {
		this.dday = dday;
	}
	public Project(String pj_id, String title, int price, String img, int goal_amt, int now_amt, double achv_percent,
			String g_id, String info_img, String u_id, Date startdate, Date enddate, int dday) {
		super();
		this.pj_id = pj_id;
		this.title = title;
		this.price = price;
		this.img = img;
		this.goal_amt = goal_amt;
		this.now_amt = now_amt;
		this.achv_percent = achv_percent;
		this.g_id = g_id;
		this.info_img = info_img;
		this.u_id = u_id;
		this.startdate = startdate;
		this.enddate = enddate;
		this.dday = dday;
	}
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

}	