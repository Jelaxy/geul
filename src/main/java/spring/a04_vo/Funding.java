package spring.a04_vo;

// spring.a04_vo.Funding
public class Funding {
	private String f_id;
	private String pj_id; // project 외래키
	private String u_id; // grd_user 외래키
	public Funding() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 외래키 제외
	public Funding(String f_id) {
		super();
		this.f_id = f_id;
	}
	
	// 외래키 포함
	public Funding(String f_id, String pj_id, String u_id) {
		super();
		this.f_id = f_id;
		this.pj_id = pj_id;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
	public String getF_id() {
		return f_id;
	}
	public void setF_id(String f_id) {
		this.f_id = f_id;
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
