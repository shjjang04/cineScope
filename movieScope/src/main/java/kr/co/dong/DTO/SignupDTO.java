package kr.co.dong.DTO;

public class SignupDTO {
	private int u_number;
	private int u_age;
	private String u_date;
	private String u_id;
	private String u_pw;
	private String u_addr;
	private String u_gender;
	private String u_email;
	private String u_birthday;

	public int getU_number() {
		return u_number;
	}

	public void setU_number(int u_number) {
		this.u_number = u_number;
	}

	public int getU_age() {
		return u_age;
	}

	public void setU_age(int u_age) {
		this.u_age = u_age;
	}

	public String getU_date() {
		return u_date;
	}

	public void setU_date(String u_date) {
		this.u_date = u_date;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_addr() {
		return u_addr;
	}

	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_birthday() {
		return u_birthday;
	}

	public void setU_birthday(String u_birthday) {
		this.u_birthday = u_birthday;
	}

	@Override
	public String toString() {
		return "UserDTO [u_number=" + u_number + ", u_age=" + u_age + ", u_date=" + u_date + ", u_id=" + u_id
				+ ", u_pw=" + u_pw + ", u_addr=" + u_addr + ", u_gender=" + u_gender + ", u_email=" + u_email
				+ ", u_birthday=" + u_birthday + "]";
	}

}
