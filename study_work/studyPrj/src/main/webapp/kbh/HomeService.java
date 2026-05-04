package service;

public class HomeService {

	public String getMessage(String cate) {

		switch(cate) {

		case "info":
			return "안녕하세요 김보현입니다.";

		case "hobby":
			return "취미는 공부와 운동입니다.";

		case "future":
			return "백엔드 개발자가 목표입니다.";

		default:
			return "메인 페이지입니다.";
		}
	}
}
