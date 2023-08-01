package kr.co.dong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.ArticleDAO;
import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.DTO.UserDTO;
import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.service.ProfileService;

@Service
public class ProfileServiceImpl implements ProfileService{
	@Autowired
	UserDAO userdao;
	@Autowired
	UserfavoriteDAO userfavdao;
	@Autowired
	BoardDAO boarddao;
	@Autowired
	ArticleDAO articledao;

	@Override
	public UserDTO userDetail(int u_number) {
		// TODO Auto-generated method stub
		UserDTO dto = userdao.selectOne(u_number);
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
	public void userFavDel(int FK_u_number) {
		// TODO Auto-generated method stub
		userfavdao.favDelete(FK_u_number);
		
	}

	/*@Override
	public List<ArticleDTO> userAtc(int FK_u_number) {
		// TODO Auto-generated method stub
		List<ArticleDTO> dto = articledao.listall(FK_u_number);
		return dto;
	}*/


	
}
