package javarajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage.do")
public class MypageCtrl {

	@RequestMapping(params = "modify")
	public String modifyProView() {
		return "profile-details";
	}

	@RequestMapping(params = "delete")
	public String deleteAccount() {
		return "delete-account";
	}

	@RequestMapping(params = "bookmark")
	public String bookmarkView() {
		return "bookmark";
	}

	@RequestMapping(params = "applied")
	public String appliedView() {
		return "applied-job";
	}

	@RequestMapping(params = "qanda")
	public String qandaView() {
		return "qanda";
	}

}
