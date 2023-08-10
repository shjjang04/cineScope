package kr.co.dong.service;

import java.util.List;
import java.util.Map;

import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.DTO.UserfavoriteDTO;

public interface MainService {
	public String login(Map<String, Object> map);
	public List<MovieDTO> recommend() throws Exception;
	public List<MovieDTO> favRecommend(int u_number);
	public List<MovieDTO> random();
	public List<UserfavoriteDTO> favCheck(int u_number);
}
