package kr.co.dong.service;

import java.util.List;

import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.DTO.UserDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

public interface ProfileService {
	//uno = usernumber
	public UserDTO userDetail(int uno);
	public List<UserfavoriteDTO> userFav(int FK_u_number);
	public List<BoardDTO> userBoard(int FK_u_number);
	public List<ArticleDTO> userAtc(int FK_u_number);
	public void update(UserDTO dto);
	public BoardDTO writeBoard(int u_number);
}
