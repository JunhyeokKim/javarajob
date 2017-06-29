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

// ���� �������� ���� ��ġ�� �������� ���� ����:ApplicationContextAware
@Controller
public class DownCtrl implements ApplicationContextAware {

	// context ���� : webcontent:�������..
	private WebApplicationContext context = null;

	@RequestMapping("down.do")
	public ModelAndView download(@RequestParam("fname") String fname) {
		System.out.println("���ϸ�:" + fname);
		// return new ModelAndView("b01_board/a01_list","list",new Board());
		File f = getFile(fname);
		// View model ����..
		return new ModelAndView("download", "downloadFile", f);
	}

	private File getFile(String fname) {
		String rfname = context.getServletContext().getRealPath("/z02_upload/" + fname);
		return new File(rfname);
	}

	@Override
	public void setApplicationContext(ApplicationContext webctx) throws BeansException {
		// TODO Auto-generated method stub
		// WebApplicationContext ����������.
		this.context = (WebApplicationContext) webctx;
	}

}
