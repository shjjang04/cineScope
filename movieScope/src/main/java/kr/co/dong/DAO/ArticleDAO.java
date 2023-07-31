package kr.co.dong.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.ArticleDTO;
public interface ArticleDAO {
	public void check(int FK_u_number);
	public void delete(int a_number);
	public void insert(ArticleDTO aD);
	public List<ArticleDTO> listall(int FK_b_number);
	public void update(ArticleDTO aD);
}