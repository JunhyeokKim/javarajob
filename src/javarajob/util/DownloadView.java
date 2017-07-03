package javarajob.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;
// download ���..
// filedown

// springweb.f01_file.B01_DownloadView
public class DownloadView extends AbstractView{

	
	public DownloadView() {
		// download contentType����
		setContentType("application/download; charset=utf-8;");
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		File file = (File)model.get("downloadFile");
		
		// stream ����(�谹������)�� �ִ� �ڿ� client(������-�ͽ��÷η�, ũ��)�� �����ϱ�����..response
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		String fileName=file.getName();
		// �������� ���� �ѱ�ó�� ���� ó�� ����.
		// ie���� ����
		String userAgent=request.getHeader("User-Agent");
		boolean ie=userAgent.indexOf("MSIE")>-1;
		// �������� ���� �ѱ����ϸ� ó�� ������ ���̶����� setting����� ����ȭ �� ��.. (���ϸ� ����ó��)
		if(ie){
			fileName=URLEncoder.encode(file.getName(),"utf-8").replaceAll("\\+", " ");
		} else{
			fileName= new String(file.getName().getBytes("utf-8"),"iso-8859-1").replaceAll("\\+", " ");
		}
		// response�� �������� setting
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		// Stream ����
		OutputStream out=response.getOutputStream();
		FileInputStream fis=null;
		fis=new FileInputStream(file);
		FileCopyUtils.copy(fis, out);
		out.flush();
	}

}
