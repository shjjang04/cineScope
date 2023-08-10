package kr.co.dong.DTO;

public class UserfavoriteDTO {
	private int uf_number;
	private int FK_m_number;
	private int FK_u_number;

	public int getUf_number() {
		return uf_number;
	}

	public void setUf_number(int uf_number) {
		this.uf_number = uf_number;
	}

	public int getFK_m_number() {
		return FK_m_number;
	}

	public void setFK_m_number(int fK_m_number) {
		FK_m_number = fK_m_number;
	}

	public int getFK_u_number() {
		return FK_u_number;
	}

	public void setFK_u_number(int fK_u_number) {
		FK_u_number = fK_u_number;
	}

	@Override
	public String toString() {
		return "userfavoriteDTO [uf_number=" + uf_number + ", FK_m_number=" + FK_m_number + ", FK_u_number="
				+ FK_u_number + "]";
	}
	
}
