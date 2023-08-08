package kr.co.dong.service;

import java.util.List;

import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.DTO.SignupDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

public interface ProfileService {
	
	/*계정 정보 확인*/
	public SignupDTO userDetail(int uno);
	/*찜한 영화 목록 확인*/
	public List<UserfavoriteDTO> userFav(int FK_u_number);
	/*찜한 영화 목록 에서 특정 영화 제거*/
	public void userFavDel(int FK_u_number);
	/*평점 게시판에서 작성한 게시물 확인*/
	public List<BoardDTO> userBoard(int FK_u_number);
}	
