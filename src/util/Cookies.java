package util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies { //Cookie class
	private Map<String, Cookie> cookie = new HashMap<>();
	// 문자열 쿠키이름, 값으로 쿠키 객체를 쌍으로 저장하는 사전적인 자료구조 컬렉션 맵
	
	public Cookies(HttpServletRequest request) { 
		//HttpServletRequest 서블릿은 사용자폼에서 입력한 정보를 서버로 가져오는 역할
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie tempCookie : cookies) {
				cookie.put(tempCookie.getName(), tempCookie); //쿠키이름, 쿠키객체 저장
			}
		}
	}
	
	public Cookie getCookie(String name) {
		return cookie.get(name);
	}
	
	public String getValue(String name) throws IOException{
		return URLDecoder.decode(cookie.get(name).getValue(), "UTF-8"); 
	} //한글이면 깨질 수 있으므로 UTF-8로 디코드해서 반환
	
	public boolean exists(String name) {
		return cookie.get(name) != null;
	}
	
	public static Cookie createCookie(String name, String value) throws UnsupportedEncodingException{
		return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
	}
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws UnsupportedEncodingException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
	} //쿠키 이름, 값, 경로, 유효시간설정
	
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge) throws UnsupportedEncodingException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		cookie.setDomain(domain);
		
		return cookie;
	}
}
