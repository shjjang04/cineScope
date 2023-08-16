package kr.co.dong.VO;

public class BoardVO {
	private int b_number;
	private int b_cnt;
	private String u_id;
	private String b_title;
	private String b_context;
	private String b_date;
	public int getB_number() {
		return b_number;
	}
	public void setB_number(int b_number) {
		this.b_number = b_number;
	}
	public int getB_cnt() {
		return b_cnt;
	}
	public void setB_cnt(int b_cnt) {
		this.b_cnt = b_cnt;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_context() {
		return b_context;
	}
	public void setB_context(String b_context) {
		this.b_context = b_context;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	@Override
	public String toString() {
		return "BoardVO [b_number=" + b_number + ", b_cnt=" + b_cnt + ", u_id=" + u_id + ", b_title=" + b_title
				+ ", b_context=" + b_context + ", b_date=" + b_date + "]";
	}
	
	
	
}
