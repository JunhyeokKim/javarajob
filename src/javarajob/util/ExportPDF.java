package javarajob.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.nio.charset.Charset;

import org.springframework.beans.factory.annotation.Value;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.CssFile;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliers;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;

import javarajob.vo.Resume;

public class ExportPDF {
	
	@Value("${selfUp}")
	String fileDir;
	
	public File ConvertPDF(Resume r) throws Exception {
	Document doc = new Document(PageSize.A4,5,5,5,5);
	PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream(fileDir+r.getUserId()+"/"+r.getUserId()+"_resume.pdf"));
	doc.addAuthor("king");
	doc.addTitle("king's speach");
	// Document 오픈
	doc.open();
	XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
	
	// CSS
	CSSResolver cssResolver = new StyleAttrCSSResolver();
	CssFile cssFile = helper.getCSS(new FileInputStream("C:\\a01_prog\\eclipse\\workspace_prj\\javarajob\\WebContent\\css\\resume2.css"));
	cssResolver.addCss(cssFile);
	// HTML, 폰트 설정
	XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
	fontProvider.register("C:\\Windows\\Fonts\\malgun.ttf", "malgungothic"); // MalgunGothic은
	CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);

	HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
	htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());

	// Pipelines
	PdfWriterPipeline pdf = new PdfWriterPipeline(doc, writer);
	HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
	CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);

	XMLWorker worker = new XMLWorker(css, true);
	XMLParser xmlParser = new XMLParser(worker, Charset.forName("UTF-8"));

	// 폰트 설정에서 별칭으로 줬던 "MalgunGothic"을 html 안에 폰트로 지정한다.
	String htmlStr = "<!DOCTYPE html>" + "<html>" + "<body style='font-family:malgungothic;'>"
			+ "<h1 align='center'>이력서</h1>"
			+ "<div class='section-content new ng-scope' id='resumeFile'>"
				+ "<div class='specs edit-spec ng-scope basic-information'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding must'>"
							+ "기본 정보 "
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='0'>"
							+ "<div class='category-repeater' data-category-number=''>"
								+ "<div class='image'>"
									+ "<div class='image-area'>"
										+ "<img src='C:\\Users\\Public\\Pictures\\Sample Pictures\\img05.jpg' width='100%' />"
									+ "</div>"
								+ "</div>"
								+ "<table border class='basic-information-table'>"
								+ "<tbody>"
									+ "<tr>"
										+ "<th width='60px'>이름</th><td width='78px'>홍길동</td>"
										+ "<th width='55px'>생년월일</th><td colspan='2'>1999.12.12</td>"
										+ "<th width='30px'>성별</th><td width='57px'>남자</td>"
									+ "</tr><tr>"
										+ "<th>전화번호</th>"
										+ "<td colspan='2'>02-1234-1234</td><th>휴대폰번호</th><td colspan='3'>010-1234-1234</td>"
									+ "</tr><tr>"
										+ "<th>이메일</th>"
										+ "<td colspan='2'>hkd123@gmail.com</td><th>SNS</th><td colspan='3'></td>"
									+ "</tr><tr>"
										+ "<th>주소</th>"
										+ "<td colspan='6'>서울시 강남구</td>"
									+ "</tr>"
									+ "</tbody>"
								+ "</table>"
							+ "</div>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope advantage'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding must'>취업우대사항"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='9'>"
							+ "<div class='category-repeater' data-category-number=''>"
								+ "<table border class='advantage-table'>"
									+ "<tbody>"
										+ "<tr><th>보훈사항</th><td colspan='3'>"
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
										+ "<td>병장</td></tr>"
									+ "</tbody>"
								+ "</table>"
							+ "</div>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope highschool'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding must'>고등학교"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='1'>"
							+ "<table border data-category-number=''class='ng-scope highschool-table category-repeater'>"
								+ "<tbody><tr><th>기간</th><td colspan='3'>그냥 다님</td></tr><tr><th>학교명</th><td>엄청난고등학교</td><th>분류</th><td>예체능</td></tr>"
								+ "</tbody>"
							+ "</table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope university'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>대학교"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='2'>"
							+ "<table border data-category-number=''class='ng-scope university-table category-repeater'>"
								+ "<tbody>"
								+ "<tr><th>기간</th><td colspan='5'>걍 다님</td></tr><tr><th>학교명</th><td>허접한 대학교</td><th>분류</th><td>27년제</td>"
								+ "<th>학점</th><td>97</td></tr><tr><th>주전공</th><td colspan='5'>뿌셔뿌셔부수기전공</td></tr></tbody>"
							+ "</table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope graduate-school'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>대학원"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='3'>"
							+ "<table border data-category-number=''class='ng-scope graduate-school-table category-repeater'>"
								+ "<tbody><tr><th>기간</th><td colspan='5'></td></tr><tr><th>학교명</th><td></td><th>분류</th><td></td>"
								+ "<th>학점</th><td></td></tr><tr><th>주전공</th><td colspan='5'> </td></tr></tbody>"
							+ "</table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope certificate'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>자격/면허"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='4'>"
							+ "<table data-category-number='' class='ng-scope certificate-table category-repeater'>"
							+ "<tbody><tr><th>이름</th><td colspan='3'>운전면허</td></tr><tr><th>발행처/기관</th><td>야메운전연습장</td>"
							+ "<th>등급</th><td>무사고 27년</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope career'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>경력"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='5'>"
							+ "<table data-category-number='' class='ng-scope career-table category-repeater'>"
							+ "<tbody><tr><th>회사명</th><td>개쩌는 회사</td><th>기간</th><td>2005.3 ~ 2016.8</td>"
							+ "</tr><tr><th>직급</th><td>인턴</td><th>부서</th><td>화장실청소부</td></tr><tr>"
							+ "<th>담당업무</th><td colspan='3'>남자화장실 소변기 청소</td></tr><tr><th>퇴사사유</th><td colspan='3'>"
							+ "해고</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope language'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>어학"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='6'>"
							+ "<table data-category-number='' class='ng-scope language-table category-repeater'>"
							+ "<tbody><tr><th>외국어명</th><td>영어</td><th>시험명</th><td>TOEIC</td></tr>"
							+ "<tr><th>점수/등급</th><td>12</td><th>취득일</th><td>2016.08.23</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope award'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>수상경력"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='7'>"
							+ "<table data-category-number='' class='ng-scope award-table category-repeater'>"
							+ "<tbody><tr><th>수상명</th><td>개근상</td><th>수상내용</th><td>개근상</td></tr><tr><th>수여기관</th>"
							+ "<td>엄청난고등학교</td><th>수상일</th><td>2008.09.12</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
					
				+ "<div class='specs edit-spec ng-scope abroad'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>해외연수"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='8'>"
							+ "<table data-category-number='' class='ng-scope abroad-table category-repeater'>"
							+ "<tbody><tr><th>국가</th><td>가본 적 없음</td><th>기관</th><td>가본 적 없다고</td></tr><tr>"
							+ "<th>목적 및 내용</th><td colspan='3'>가본 적 없다는 데 자꾸 물어보지마라</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
			+ "</div></body></html>";

	StringReader strReader = new StringReader(htmlStr);
	xmlParser.parse(strReader);

	doc.close();
	writer.close();
	return new File("asd");
	}
}
