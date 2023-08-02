package geulrowding.z01_vo;

public class Bank_account {
	private String back;
	private int account_num;
	private String u_id; // grd_user 외래키
	
	public Bank_account() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 외래키 제외
	public Bank_account(String back, int account_num) {
		super();
		this.back = back;
		this.account_num = account_num;
	}
	
	// 외래키 포함
	public Bank_account(String back, int account_num, String u_id) {
		super();
		this.back = back;
		this.account_num = account_num;
		this.u_id = u_id;
	}
	
	// getter/setter 메서드
	public String getBack() {
		return back;
	}
	public void setBack(String back) {
		this.back = back;
	}
	public int getAccount_num() {
		return account_num;
	}
	public void setAccount_num(int account_num) {
		this.account_num = account_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
}
