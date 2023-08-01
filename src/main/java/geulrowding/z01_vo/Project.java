package geulrowding.z01_vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Project {
	
	private String pj_id;
	private String title;
	private String description;
	private int price;
	private int goal_amt;
	private String g_id;
	private String u_id;
	private Date startdate;
	private Date enddate;
	private String startdateS;
	private String enddateS;
	private String img;
	private String info_img;
	private MultipartFile[] imgFile;
	private MultipartFile[] info_imgFile;
	//
	private int now_amt;
	private double achv_percent;
	private int dday;
	//
	private String g_name;
	
	
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
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
	public String getStartdateS() {
		return startdateS;
	}
	public void setStartdateS(String startdateS) {
		this.startdateS = startdateS;
	}
	public String getEnddateS() {
		return enddateS;
	}
	public void setEnddateS(String enddateS) {
		this.enddateS = enddateS;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getInfo_img() {
		return info_img;
	}
	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}
	public MultipartFile[] getImgFile() {
		return imgFile;
	}
	public void setImgFile(MultipartFile[] imgFile) {
		this.imgFile = imgFile;
	}
	public MultipartFile[] getInfo_imgFile() {
		return info_imgFile;
	}
	public void setInfo_imgFile(MultipartFile[] info_imgFile) {
		this.info_imgFile = info_imgFile;
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
	public int getDday() {
		return dday;
	}
	public void setDday(int dday) {
		this.dday = dday;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public Project(String pj_id, String title, String description, int price, int goal_amt, String g_id, String u_id,
			Date startdate, Date enddate, String startdateS, String enddateS, String img, String info_img,
			MultipartFile[] imgFile, MultipartFile[] info_imgFile, int now_amt, double achv_percent, int dday,
			String g_name) {
		super();
		this.pj_id = pj_id;
		this.title = title;
		this.description = description;
		this.price = price;
		this.goal_amt = goal_amt;
		this.g_id = g_id;
		this.u_id = u_id;
		this.startdate = startdate;
		this.enddate = enddate;
		this.startdateS = startdateS;
		this.enddateS = enddateS;
		this.img = img;
		this.info_img = info_img;
		this.imgFile = imgFile;
		this.info_imgFile = info_imgFile;
		this.now_amt = now_amt;
		this.achv_percent = achv_percent;
		this.dday = dday;
		this.g_name = g_name;
	}
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	

}	