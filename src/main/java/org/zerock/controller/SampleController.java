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
	
	// login �α��� ȭ�� ����
	@RequestMapping("/login")
	public String login(@ModelAttribute("id") String id) {
		return "login";
	}
	
	// loginForm �α����� �α��� ȭ�鿡�� �α��� ��ư ������ ������ ���� ��ȿ�� �˻縦 ��.
	// 1. id�� pw üũ
	// 2-1. ����ġ�� : login �α��� ȭ������ �ǵ��ư�
	// 2-2. ��ġ�� : checkbox �α��� ���� ������ üũ �Ǿ��ִ��� Ȯ����.
	// 2-2. üũ�ڽ� üũ �Ǿ�������, ��Ű ����. id ����. (���� �̵��ؾ�����?)
	// 2-2. üũ�ڽ� üũ �Ǿ�����������, ��Ű �̻���. (���� �̵��ؾ�����?)
	@RequestMapping("loginAction")
	public String loginAction(HttpServletResponse response, @ModelAttribute("id") String id, @ModelAttribute("pw") String pw, @ModelAttribute("remId") String check) {
		
		if(id.equals("aaaa") && pw.equals("1234")) {
			// ��Ű ������ ���� �� ��, 
			Cookie c = new Cookie ("id", id);

			// üũ�ڽ��� üũ�Ǿ������ʴٸ� ��Ű�� �����ֱ⸦ 0���� �����.
			if(!(check.equals("on")))
				c.setMaxAge(0);
			
			// üũ�ڽ��� ���ο� ������� ��Ű�� ���� ��Ȳ�� �߰��Ѵ�.
			response.addCookie(c);

			//���ư��� ���� ���� �ӽ÷� ���Ѵ�.
			return "home";
		}
			//���� ���̵� ����� Ʋ���ÿ� ���� �α��� ȭ������ �̵��Ѵ�.
			return "login";
	}
	
	// login �α��� ȭ�� ����(�ϴ��� �α����ϰų� ȸ�������ϰ� �� ���� ��� ��������ϴ�. �Ը��� �°� ������ ��)
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	// signup ȸ������ ȭ�� ����
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	// tos �̿���/�������� ���� �� �̿� ���� ȭ�� ����
	@RequestMapping("/tos")
	public String tos() {
		return "tos";
	}
}
