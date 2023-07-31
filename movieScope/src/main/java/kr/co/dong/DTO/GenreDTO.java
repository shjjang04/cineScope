package kr.co.dong.DTO;

public class GenreDTO {
	private String m_genre;
	private int FK_m_number;
	
	public String getM_genre() {
		return m_genre;
	}
	public void setM_genre(String m_genre) {
		this.m_genre = m_genre;
	}
	public int getFK_m_number() {
		return FK_m_number;
	}
	public void setFK_m_number(int fK_m_number) {
		FK_m_number = fK_m_number;
	}

	@Override
	public String toString() {
		return "genreDTO [m_genre=" + m_genre + ", FK_m_number=" + FK_m_number + "]";
	}
}
