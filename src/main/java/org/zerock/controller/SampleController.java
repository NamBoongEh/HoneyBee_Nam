package org.zerock.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/")
@Log4j
public class SampleController {
	
	// login 로그인 화면 맵핑
	@RequestMapping("/login")
	public String login(@ModelAttribute("id") String id) {
		return "login";
	}
	
	// loginForm 로그인폼 로그인 화면에서 로그인 버튼 누르면 다음과 같은 유효성 검사를 함.
	// 1. id와 pw 체크
	// 2-1. 불일치시 : login 로그인 화면으로 되돌아감
	// 2-2. 일치시 : checkbox 로그인 상태 유지가 체크 되어있는지 확인함.
	// 2-2. 체크박스 체크 되어있을시, 쿠키 생성. id 저장. (어디로 이동해야하지?)
	// 2-2. 체크박스 체크 되어있지않을시, 쿠키 미생성. (어디로 이동해야하지?)
	@RequestMapping("loginAction")
	public String loginAction(HttpServletResponse response, @ModelAttribute("id") String id, @ModelAttribute("pw") String pw, @ModelAttribute("remId") String check) {
		
		if(id.equals("aaaa") && pw.equals("1234")) {
			// 쿠키 생성을 먼저 한 뒤, 
			Cookie c = new Cookie ("id", id);

			// 체크박스가 체크되어있지않다면 쿠키의 생명주기를 0으로 만든다.
			if(!(check.equals("on")))
				c.setMaxAge(0);
			
			// 체크박스의 여부와 상관없이 쿠키의 현재 상황을 추가한다.
			response.addCookie(c);

			//돌아가는 곳은 현재 임시로 정한다.
			return "home";
		}
			//만약 아이디 비번이 틀릴시엔 원래 로그인 화면으로 이동한다.
			return "login";
	}
	
	// login 로그인 화면 맵핑(일단은 로그인하거나 회원가입하고 갈 곳이 없어서 만들었습니다. 입맛에 맞게 수정할 것)
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	// signup 회원가입 화면 맵핑
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	// tos 이용약관/개인정보 수집 및 이용 동의 화면 맵핑
	@RequestMapping("/tos")
	public String tos() {
		return "tos";
	}
}
