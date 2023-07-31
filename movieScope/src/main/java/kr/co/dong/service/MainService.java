package kr.co.dong.service;

import java.util.List;
import java.util.Map;

public interface MainService {
	public Map<String, Object> login(Map<String, Object> map);
	public List<String> recommend();
}
