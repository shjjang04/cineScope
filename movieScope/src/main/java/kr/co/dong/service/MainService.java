package kr.co.dong.service;

import java.util.List;
import java.util.Map;

public interface MainService {
	public String login(Map<String, Object> map);
	public List<String> recommend();
	public List<String> random();
}
