package kr.co.dong.DTO;

public class AdminDTO {
	private int admin_number;
	private String admin_id;
	private String admin_pw;
	private String admin_name;
	private String admin_email;
	private String admin_dept;

	public int getAdmin_number() {
		return admin_number;
	}

	public void setAdmin_number(int admin_number) {
		this.admin_number = admin_number;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}

	public String getAdmin_dept() {
		return admin_dept;
	}

	public void setAdmin_dept(String admin_dept) {
		this.admin_dept = admin_dept;
	}

	@Override
	public String toString() {
		return "adminDTO [admin_number=" + admin_number + ", admin_id=" + admin_id + ", admin_pw=" + admin_pw
				+ ", admin_name=" + admin_name + ", admin_email=" + admin_email + ", admin_dept=" + admin_dept + "]";
	}
	
	
	
}
