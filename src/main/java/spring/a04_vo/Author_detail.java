package spring.a04_vo;

// spring.a04_vo.Author_detail
public class Author_detail {
	private String a_info;
	private String u_id; // grd_user 외래키
	
	public Author_detail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Author_detail(String a_info, String u_id) {
		super();
		this.a_info = a_info;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
	public String getA_info() {
		return a_info;
	}
	public void setA_info(String a_info) {
		this.a_info = a_info;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	
}
