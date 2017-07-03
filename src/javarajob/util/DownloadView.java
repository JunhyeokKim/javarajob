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
// download 모듈..
// filedown

// springweb.f01_file.B01_DownloadView
public class DownloadView extends AbstractView{

	
	public DownloadView() {
		// download contentType설정
		setContentType("application/download; charset=utf-8;");
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		File file = (File)model.get("downloadFile");
		
		// stream 서버(톰갯웹서버)에 있는 자원 client(브라우저-익스플로러, 크롬)에 전달하기위해..response
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		String fileName=file.getName();
		// 브라우저에 따른 한글처리 내용 처리 차이.
		// ie인지 여부
		String userAgent=request.getHeader("User-Agent");
		boolean ie=userAgent.indexOf("MSIE")>-1;
		// 브라우저에 따라서 한글파일명 처리 내용이 차이때문에 setting방식을 차별화 해 둠.. (파일명 공백처리)
		if(ie){
			fileName=URLEncoder.encode(file.getName(),"utf-8").replaceAll("\\+", " ");
		} else{
			fileName= new String(file.getName().getBytes("utf-8"),"iso-8859-1").replaceAll("\\+", " ");
		}
		// response에 파일형식 setting
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		// Stream 전송
		OutputStream out=response.getOutputStream();
		FileInputStream fis=null;
		fis=new FileInputStream(file);
		FileCopyUtils.copy(fis, out);
		out.flush();
	}

}
