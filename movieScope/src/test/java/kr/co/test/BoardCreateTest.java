package kr.co.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.BoardDTO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardCreateTest {
	//게시판 글쓰기 1000개 해보기 (DAO insert TEST)
	@Inject
	private BoardDAO boardDAO;
	
	@Test
	public void testInsert() throws Exception{
		BoardDTO boardDTO;
		
		for(int i = 1; i<=100; i++) {
			boardDTO = new BoardDTO();
			boardDTO.setFK_u_number(1);
			boardDTO.setB_title("title" + i);
			boardDTO.setB_context("title" + i);
			boardDTO.setB_date("2023-08-10");
			
			boardDAO.insert(boardDTO);
			
			Thread.sleep(1000);
		}
		
	}
}
