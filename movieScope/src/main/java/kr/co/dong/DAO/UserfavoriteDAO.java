package kr.co.dong.DAO;

import java.util.List;
import java.util.Map;

import kr.co.dong.DTO.UserfavoriteDTO;
public interface UserfavoriteDAO {
	   public List<UserfavoriteDTO> favCheck(int u_number);
	   public void favAdd(UserfavoriteDTO dto);
	   public void favDelete(UserfavoriteDTO dto);
	   public int favLikeMovie(int FK_u_number);
	   public List<UserfavoriteDTO> favList();
	   public int favCheck(Map<String, String> map);
}
