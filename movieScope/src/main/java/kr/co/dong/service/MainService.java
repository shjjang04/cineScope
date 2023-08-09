package kr.co.dong.service;

import java.util.List;
import java.util.Map;

import kr.co.dong.DTO.MovieDTO;

public interface MainService {
	public String login(Map<String, Object> map);
	public List<MovieDTO> recommend() throws Exception;
	public List<String> random();
}
