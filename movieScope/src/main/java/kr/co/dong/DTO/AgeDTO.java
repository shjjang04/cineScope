package kr.co.dong.DTO;

public class AgeDTO {
	
	private int m_age;
	private int FK_m_age;
	
	public int getM_age() {
		return m_age;
	}

	public void setM_age(int m_age) {
		this.m_age = m_age;
	}

	public int getFK_m_age() {
		return FK_m_age;
	}

	public void setFK_m_age(int fK_m_age) {
		FK_m_age = fK_m_age;
	}

	@Override
	public String toString() {
		return "ageDTO [m_age=" + m_age + ", FK_m_age=" + FK_m_age + "]";
	}
	
	
	
}
