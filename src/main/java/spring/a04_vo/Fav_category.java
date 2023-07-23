package spring.a04_vo;

// spring.a04_vo.Fav_category
public class Fav_category {
	private String g_id; // category 키
	private String u_id; // grd_user 키
	
	// 생성자
	public Fav_category() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Fav_category(String g_id, String u_id) {
		super();
		this.g_id = g_id;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
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
	
	
}
