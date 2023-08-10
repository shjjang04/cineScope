package kr.co.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.dong.Controller.SearchController;
import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.service.BoardService;
import kr.co.dong.utils.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTest {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Autowired(required=true)
	private Criteria cri;
	@Autowired
	private BoardService boardService;
	@Inject
	private BoardDAO boardDao; 
	
	@Test
	public void testPaging() {
		List<BoardDTO> list = boardDao.getListWithPaging(cri);
		
//		list.forEach(board -> logger.info(board.getB_title()));
		cri.setAmount(10);
		cri.setPageNum(2);
		boardService.board_listAll2(cri).forEach(board -> logger.info(board.getB_title()));
		
	}
	
}
