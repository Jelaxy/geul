package geulrowding.z01_vo;

public class Grd_user {
	private String u_id;
	private String pass;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhn_num() {
		return phn_num;
	}
	public void setPhn_num(String phn_num) {
		this.phn_num = phn_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAuthorization() {
		return authorization;
	}
	public void setAuthorization(String authorization) {
		this.authorization = authorization;
	}
	public Grd_user(String u_id, String pass, String name, String nickname, String phn_num, String email,
			String authorization) {
		super();
		this.u_id = u_id;
		this.pass = pass;
		this.name = name;
		this.nickname = nickname;
		this.phn_num = phn_num;
		this.email = email;
		this.authorization = authorization;
	}
	private String name;
	private String nickname;
	private String phn_num;
	private String email;
	private String authorization;
	public Grd_user() {
		super();
		// TODO Auto-generated constructor stub
	}
}
