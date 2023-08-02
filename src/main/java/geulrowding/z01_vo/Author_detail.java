package geulrowding.z01_vo;

public class Author_detail {
	private String u_id;
	private String a_info;
	private String bank;
	private long account_num;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getA_info() {
		return a_info;
	}
	public void setA_info(String a_info) {
		this.a_info = a_info;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public long getAccount_num() {
		return account_num;
	}
	public void setAccount_num(long account_num) {
		this.account_num = account_num;
	}
	public Author_detail(String u_id, String a_info, String bank, long account_num) {
		super();
		this.u_id = u_id;
		this.a_info = a_info;
		this.bank = bank;
		this.account_num = account_num;
	}
	public Author_detail() {
		super();
		// TODO Auto-generated constructor stub
	} 
}
