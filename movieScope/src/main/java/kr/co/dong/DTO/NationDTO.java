package kr.co.dong.DTO;

public class NationDTO {
	
	private String m_nation;
	private int FK_m_number;
	
	
	public String getM_nation() {
		return m_nation;
	}
	public void setM_nation(String m_nation) {
		this.m_nation = m_nation;
	}
	public int getFK_m_number() {
		return FK_m_number;
	}
	public void setFK_m_number(int fK_m_number) {
		FK_m_number = fK_m_number;
	}
	
	@Override
	public String toString() {
		return "nationDTO [m_nation=" + m_nation + ", FK_m_number=" + FK_m_number + "]";
	}
}
