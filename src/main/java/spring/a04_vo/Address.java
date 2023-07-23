package spring.a04_vo;

// spring.a04_vo.Address
public class Address {
	private String ad_detail;
	private String ad_normal;
	private String ad_num;
	private String u_id; // grd_user 외래키
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 외래키 제외
	public Address(String ad_detail, String ad_normal, String ad_num) {
		super();
		this.ad_detail = ad_detail;
		this.ad_normal = ad_normal;
		this.ad_num = ad_num;
	}

	// 외래키 포함
	public Address(String ad_detail, String ad_normal, String ad_num, String u_id) {
		super();
		this.ad_detail = ad_detail;
		this.ad_normal = ad_normal;
		this.ad_num = ad_num;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
	public String getAd_detail() {
		return ad_detail;
	}

	public void setAd_detail(String ad_detail) {
		this.ad_detail = ad_detail;
	}

	public String getAd_normal() {
		return ad_normal;
	}

	public void setAd_normal(String ad_normal) {
		this.ad_normal = ad_normal;
	}

	public String getAd_num() {
		return ad_num;
	}

	public void setAd_num(String ad_num) {
		this.ad_num = ad_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
}
