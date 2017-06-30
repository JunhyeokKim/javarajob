package javarajob.controller;

import java.io.File;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

// 실제 서버에서 파일 위치를 가져오기 위한 내용:ApplicationContextAware
@Controller
public class DownCtrl implements ApplicationContextAware {

	// context 정보 : webcontent:실제경로..
	private WebApplicationContext context = null;

	@RequestMapping("down.do")
	public ModelAndView download(@RequestParam("fname") String fname) {
		System.out.println("파일명:" + fname);
		// return new ModelAndView("b01_board/a01_list","list",new Board());
		File f = getFile(fname);
		// View model 파일..
		return new ModelAndView("download", "downloadFile", f);
	}

	private File getFile(String fname) {
		String rfname = context.getServletContext().getRealPath("/z02_upload/" + fname);
		return new File(rfname);
	}

	@Override
	public void setApplicationContext(ApplicationContext webctx) throws BeansException {
		// TODO Auto-generated method stub
		// WebApplicationContext 정보가져옮.
		this.context = (WebApplicationContext) webctx;
	}

}
