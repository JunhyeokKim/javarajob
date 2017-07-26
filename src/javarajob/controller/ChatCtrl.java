package javarajob.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatCtrl {
	@RequestMapping("/chat.do")
	public String start(HttpSession session, Model d){
		String userId= (String)session.getAttribute("id");
		d.addAttribute("id",userId);
		return "chat";
	}
}
