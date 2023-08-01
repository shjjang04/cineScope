package kr.co.dong.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.GenreDAO;
import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DAO.UserDAO;
import kr.co.dong.DAO.UserfavoriteDAO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.service.MainService;
@Service
public class MainServiceImpl implements MainService{

	@Autowired
	UserDAO userdao;
	@Autowired
	UserfavoriteDAO favdao;
	@Autowired
	MovieDAO moviedao;
	@Autowired
	GenreDAO genredao;
	
	@Override
	public String login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userdao.login(map);
	}

	@Override
	public List<String> recommend() {
		// TODO Auto-generated method stub
		List<String> list = null;

		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("MM");
		List<MovieDTO> movieList = moviedao.listAll();
		List<Integer> sameMonth = null;
		for(MovieDTO movie : movieList) {
			if(formatter.format(movie.getM_opening()).equals(formatter.format(date))) {
				sameMonth.add(movie.getM_number());
			}
		}
		int[] arr = new int[2];
		List<int[]> compare = null;
		List<Integer> attendance = null;
		for(int movie : sameMonth) {
			attendance.add(split(moviedao.detail(movie).getM_attendance()));
			arr[0] = split(moviedao.detail(movie).getM_attendance());
			arr[1] = moviedao.detail(movie).getM_number();
			compare.add(arr);
		}
		
		for(int[] data : compare) {
			if(data[0] == Collections.max(attendance)) {
				list.add(moviedao.detail(data[1]).getM_name());
				attendance.remove(Collections.max(attendance));
			}
			if(list.size() == 10) {
				break;
			}
		}
		return list;
	}

	public int split(String str) {
		str=str.replace(",", "");
		str=str.replace("명", "");
		return Integer.parseInt(str);
	}
}