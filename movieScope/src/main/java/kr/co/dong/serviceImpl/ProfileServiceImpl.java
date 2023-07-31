package kr.co.dong.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.dong.DAO.ArticleDAO;
import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.DTO.UserDTO;
import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.service.ProfileService;

@Service
public class ProfileServiceImpl implements ProfileService{
	UserDAO userdao;
	UserfavoriteDAO userfavdao;
	BoardDAO boarddao;
	ArticleDAO articledao;

	@Override
	public UserDTO userDetail(int uno) {
		// TODO Auto-generated method stub
		UserDTO dto = userdao.selectOne(uno);
		return dto;
	}

	@Override
	public List<UserfavoriteDTO> userFav(int FK_u_number) {
		// TODO Auto-generated method stub
		List<UserfavoriteDTO> dto = userfavdao.favCheck(FK_u_number);
		return dto;
	}

	@Override
	public List<BoardDTO> userBoard(int FK_u_number) {
		// TODO Auto-generated method stub
		List<BoardDTO> dto = boarddao.checkAll(FK_u_number);
		return dto;
	}

	@Override
	public List<ArticleDTO> userAtc(int FK_u_number) {
		// TODO Auto-generated method stub
		List<ArticleDTO> dto = articledao.listall(FK_u_number);
		return dto;
	}

	@Override
	public void update(UserDTO dto) {
		// TODO Auto-generated method stub
		userdao.update(dto);
	}

	@Override
	public BoardDTO writeBoard(int u_number) {
		// TODO Auto-generated method stub
		return boarddao.write(u_number);
	}
	
}
