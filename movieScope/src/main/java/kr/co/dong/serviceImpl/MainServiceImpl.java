package kr.co.dong.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.GenreDAO;
import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.SignupDAO;
import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.service.MainService;
@Service
public class MainServiceImpl implements MainService{

	@Autowired
	SignupDAO dao;
	@Autowired
	UserfavoriteDAO favdao;
	@Autowired
	MovieDAO moviedao;
	@Autowired
	GenreDAO genredao;
	
	@Override
	public String login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.login(map);
	}

	@Override
	public List<MovieDTO> recommend() throws Exception {
		// TODO Auto-generated method stub
		List<MovieDTO> list = new ArrayList<MovieDTO>();

		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("MM");
		List<MovieDTO> movieList = moviedao.listAll();
		List<Integer> sameMonth = new ArrayList<Integer>();
		for(MovieDTO movie : movieList) {
			if(formatter.format(formatter.parse(movie.getM_opening())).equals(formatter.format(date))) {
				sameMonth.add(movie.getM_number());
			}
		}
		int[] arr = new int[2];
		Map<Integer, Integer> compare = new HashMap<Integer,Integer>();
		List<Integer> attendance = new ArrayList<Integer>();
		for(int movie : sameMonth) {
			if(moviedao.detail(movie).getM_attendance() != null && !(moviedao.detail(movie).getM_attendance().equals("null")) ) {
				attendance.add(split(moviedao.detail(movie).getM_attendance()));
				arr[0] = split(moviedao.detail(movie).getM_attendance());
				compare.put(movie, arr[0]);
			}
		}
		
		List<Map.Entry<Integer, Integer>> entryList = new ArrayList<Map.Entry<Integer,Integer>>(compare.entrySet());
		entryList.sort(Map.Entry.comparingByValue());
		
		System.out.println(entryList);
		for(int i = (entryList.size() - 1); i >= (entryList.size() - 10) ; i--) {
			list.add(moviedao.detail(entryList.get(i).getKey()));
		}
		return list;
//		for(int[] data : compare) {
//			if(data[0] == Collections.max(attendance)) {
//				list.add(moviedao.detail(data[1]).getM_name());
//				attendance.remove(Collections.max(attendance));
//			}
//			if(list.size() == 10) {
//				break;
//			}
//		}
//		return list;
	}
	
	public List<String> random(){
		List<String> list = new ArrayList<String>();
		Random random = new Random();
		for(int i = 0; i < 10; i++) {
			int ran = (int)(random.nextInt(moviedao.listAll().size() - 1) + 1);
			list.add(moviedao.detail(ran).getM_name());
		}
		return list;
	}
	

	public int split(String str) {
		str=str.replace(",", "");
		str=str.replace("명", "");
		return Integer.parseInt(str);
	}
}