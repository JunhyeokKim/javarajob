package javarajob.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.util.HashMap;
import java.util.List;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.html.simpleparser.HTMLWorker;
import com.itextpdf.text.html.simpleparser.StyleSheet;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.CssFile;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;

public class ConverHTMLToPDF {

	public static void main(String[] args) {
		String file = "c:\\test.pdf";
		PdfWriter pdfWriter = null;
		try {
			// create a new document
			Document document = new Document();
			// get Instance of the PDFWriter
			pdfWriter = PdfWriter.getInstance(document, new FileOutputStream(file));
			document.setPageSize(PageSize.A4);
			document.open();
			
			CSSResolver cssResolver = new StyleAttrCSSResolver();
			CssFile cssFile = XMLWorkerHelper.getCSS(new FileInputStream("C:/a01_prog/eclipse/workspace_prj/javarajob/WebContent/a00_com/a00_com.css"));
			cssResolver.addCss(cssFile);
			
			HTMLWorker htmlWorker = new HTMLWorker(document);
			HashMap<String, Object> interfaceProps = new HashMap<String, Object>();
			StyleSheet styles = new StyleSheet();
			DefaultFontProvider dfp = new DefaultFontProvider("C:/a01_prog/aball.ttf");

			// 폰트 파일 설정 (한글 나오게 하기 위해 설정 필요함
			interfaceProps.put(HTMLWorker.FONT_PROVIDER, dfp);
			StringBuffer sb = new StringBuffer();
			sb.append("<!DOCTYPE html>" + "<html>" + "<head>" + "</head>" + "<body>"
					+ "<div class='section-content new ng-scope' id='resumeFile'>"
					+ "<div class='specs edit-spec ng-scope basic-information'>" + "<div class='subtitle ng-scope'>"
					+ "<div class='ng-binding must'>기본 정보</div>" + "<span class='ng-scope'>(필수입력)</span>" + "</div>"
					+ "<div class='content ng-scope'>" + "<div class='category-wrapper ng-scope' data-category='0'>"
					+ "<div class='category-repeater' data-category-number=''><div class='image'><div class='image-area'>"
					+ "<img src='upload/default_1.png' width='100%'></div></div><table border class='basic-information-table'>"
					+ "<colgroup><col width='125px'><col width='130px'><col width='100px'><col width='0px'><col width='140px'>"
					+ "<col width='80px'><col width='50px'><col width='95px'></colgroup><tbody><tr><th>이름</th><td>홍길동</td>"
					+ "<th>생년월일</th><td colspan='3'>1999.12.12</td><th>성별</th><td>남자</td></tr><tr><th>전화번호</th>"
					+ "<td colspan='3'>02-1234-1234</td><th>휴대폰번호</th><td colspan='3'>010-1234-1234</td></tr><tr><th>이메일</th>"
					+ "<td colspan='3'>hkd123@gmail.com</td><th>SNS</th><td colspan='3'></td></tr><tr><th>주소</th>"
					+ "<td colspan='7'>서울시 강남구</td></tr></tbody></table></div></div></div></div>"
					+ "<div class='specs edit-spec ng-scope advantage'><div class='subtitle ng-scope'>"
					+ "<div class='ng-binding must'>취업우대사항</div><span class='ng-scope'>(필수입력)</span></div>"
					+ "<div class='content ng-scope'><div class='category-wrapper ng-scope' data-category='9'>"
					+ "<div class='category-repeater' data-category-number=''><table border class='advantage-table'>"
					+ "<colgroup><col width='120px'><col width='320px'><col width='120px'><col width='320px'></colgroup>"
					+ "<tbody><tr><th>보훈사항</th><td colspan='3'>"
					+ "<input type='radio' name='vete' checked='checked' value='tru' class='ng-pristine ng-untouched ng-valid' />대상"
					+ "<input type='radio' name='vete' value='fals'class='ng-pristine ng-untouched ng-valid' />비대상</td></tr>"
					+ "<tr><th>장애여부</th><td colspan='3'>"
					+ "<input type='radio' name='handi' value='tru' checked='checked'class='ng-pristine ng-untouched ng-valid' />대상"
					+ "<input type='radio' name='handi' value='fals'class='ng-pristine ng-untouched ng-valid' />비대상</td></tr>"
					+ "<tr><th>병역구분</th><td>"
					+ "<input type='radio' name='milit' checked='checked'class='ng-pristine ng-untouched ng-valid' value='0' />군필"
					+ "<input type='radio' name='milit'class='ng-pristine ng-untouched ng-valid' value='1' />미필"
					+ "<input type='radio' name='milit'class='ng-pristine ng-untouched ng-valid' value='2' />면제</td>"
					+ "<th>복무기간</th><td>2016.01 ~ 2017.10</td></tr><tr><th>군별</th><td>육군</td><th>계급</th>"
					+ "<td>병장</td></tr></tbody></table></div></div></div></div><div class='specs edit-spec ng-scope highschool'>"
					+ "<div class='subtitle ng-scope'><div class='ng-binding must'>고등학교</div><span class='ng-scope'>(필수입력)</span></div>"
					+ "<div class='content ng-scope'>"
					+ "<div class='category-wrapper ng-scope' data-category='1'>"
					+ "<table border data-category-number=''class='ng-scope highschool-table category-repeater'><colgroup>"
					+ "<col width='120px'><col width='320px'><col width='120px'><col width='320px'></colgroup><tbody><tr><th>기간</th>"
					+ "<td colspan='3'>그냥 다님</td></tr><tr><th>학교명</th><td>엄청난고등학교</td><th>분류</th><td>예체능</td></tr></tbody>"
					+ "</table></div></div></div><div class='specs edit-spec ng-scope university'><div class='subtitle ng-scope'>"
					+ "<div class='ng-binding'>대학교</div></div><div class='content ng-scope'>"
					+ "<div class='category-wrapper ng-scope' data-category='2'>"
					+ "<table border data-category-number=''class='ng-scope university-table category-repeater'><colgroup><col width='120px'>"
					+ "<col width='240px'><col width='100px'><col width='130px'><col width='100px'><col width='190px'></colgroup><tbody>"
					+ "<tr><th>기간</th><td colspan='5'>걍 다님</td></tr><tr><th>학교명</th><td>허접한 대학교</td><th>분류</th><td>27년제</td>"
					+ "<th>학점</th><td>97</td></tr><tr><th>주전공</th><td colspan='5'>뿌셔뿌셔부수기전공</td></tr></tbody></table></div></div>"
					+ "</div><div class='specs edit-spec ng-scope graduate-school'><div class='subtitle ng-scope'>"
					+ "<div class='ng-binding'>대학원</div></div><div class='content ng-scope'>"
					+ "<div class='category-wrapper ng-scope' data-category='3'>"
					+ "<table border data-category-number=''class='ng-scope graduate-school-table category-repeater'><colgroup>"
					+ "<col width='120px'><col width='240px'><col width='100px'><col width='150px'><col width='80px'><col width='190px'>"
					+ "</colgroup><tbody><tr><th>기간</th><td colspan='5'></td></tr><tr><th>학교명</th><td></td><th>분류</th><td></td>"
					+ "<th>학점</th><td></td></tr><tr><th>주전공</th><td colspan='5'></td></tr></tbody></table>"
					+ "</div></div></div></div></div>");

			StringReader strReader = new StringReader(sb.toString());
			List<Element> objects = htmlWorker.parseToList(strReader, styles, interfaceProps);

			for (int k = 0; k < objects.size(); ++k) {
				document.add((Element) objects.get(k));
			}
			document.close();
			// close the writer
			pdfWriter.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
