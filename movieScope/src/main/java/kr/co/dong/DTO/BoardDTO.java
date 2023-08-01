package kr.co.dong.DTO;

import java.sql.Date;

public class BoardDTO {
	private int b_cnt;
	private int FK_u_number;
	private String b_title;
	private String b_context;
	private Date b_date;
	public int getB_cnt() {
		return b_cnt;
	}
	public void setB_cnt(int b_cnt) {
		this.b_cnt = b_cnt;
	}
	public int getFK_u_number() {
		return FK_u_number;
	}
	public void setFK_u_number(int fK_u_number) {
		FK_u_number = fK_u_number;
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
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	@Override
	public String toString() {
		return "BoardDTO [b_cnt=" + b_cnt + ", FK_u_number=" + FK_u_number + ", b_title=" + b_title + ", b_context="
				+ b_context + ", b_date=" + b_date + "]";
	}

	
}
