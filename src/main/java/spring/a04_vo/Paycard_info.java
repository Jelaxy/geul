package spring.a04_vo;

import java.util.Date;

// spring.a04_vo.Paycard_info
public class Paycard_info {
	private String paycard_cname;
	private int paycard_number;
	private Date expiration_date;
	private int cvc;
	private String u_id; // grd_user 외래키
	
	public Paycard_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 외래키 제외
	public Paycard_info(String paycard_cname, int paycard_number, Date expiration_date, int cvc) {
		super();
		this.paycard_cname = paycard_cname;
		this.paycard_number = paycard_number;
		this.expiration_date = expiration_date;
		this.cvc = cvc;
	}
	
	// 외래키 포함
	public Paycard_info(String paycard_cname, int paycard_number, Date expiration_date, int cvc, String u_id) {
		super();
		this.paycard_cname = paycard_cname;
		this.paycard_number = paycard_number;
		this.expiration_date = expiration_date;
		this.cvc = cvc;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
	public String getPaycard_cname() {
		return paycard_cname;
	}

	public void setPaycard_cname(String paycard_cname) {
		this.paycard_cname = paycard_cname;
	}

	public int getPaycard_number() {
		return paycard_number;
	}

	public void setPaycard_number(int paycard_number) {
		this.paycard_number = paycard_number;
	}

	public Date getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}

	public int getCvc() {
		return cvc;
	}

	public void setCvc(int cvc) {
		this.cvc = cvc;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
}
