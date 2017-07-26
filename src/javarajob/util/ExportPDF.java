package javarajob.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.nio.charset.Charset;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

import javarajob.service.ResumeService;
import javarajob.vo.Resume;


@Controller
public class ExportPDF {
	
	public ExportPDF(){};
	
	@Value("${selfUp}")
	String fileDir;
	
	@Autowired(required = false)
	private ResumeService s;
	
	@RequestMapping("/export_pdf.do")
	public String ConvertPDF(@RequestParam("userId") String id) throws Exception {
	Document doc = new Document(PageSize.A4,5,5,5,5);
	PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream(fileDir+id+"/"+id+"_resume.pdf"));
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
	
	// id를 이용하여 resume 객체 생성
	Resume r = s.oneResume(id);

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
										+ "<img src='"+fileDir+r.getPicName()+"' width='100%' />"
									+ "</div>"
								+ "</div>"
								+ "<table border class='basic-information-table'>"
								+ "<tbody>"
									+ "<tr>"
										+ "<th width='60px'>이름</th><td width='78px'>"+r.getName()+"</td>"
										+ "<th width='55px'>생년월일</th><td colspan='2'>"
										+ r.getBirthYear()!=null?r.getBirthYear():""
										+ "-"+r.getBirthMon()!=null?r.getBirthMon():""
										+ "-"+r.getBirthDay()!=null?r.getBirthDay():""+"</td>"
										+ "<th width='30px'>성별</th><td width='57px'>"+r.getGender()!=null?r.getGender():""+"</td>"
									+ "</tr><tr>"
										+ "<th>전화번호</th>"
										+ "<td colspan='2'>"+r.getHtel()!=null?r.getHtel():""+"</td><th>휴대폰번호</th><td colspan='3'>"+r.getCtel()!=null?r.getCtel():""+"</td>"
									+ "</tr><tr>"
										+ "<th>이메일</th>"
										+ "<td colspan='2'>"+r.getEmail()!=null?r.getEmail():""+"</td><th>SNS</th><td colspan='3'>"+r.getSns()!=null?r.getSns():""+"</td>"
									+ "</tr><tr>"
										+ "<th>주소</th>"
										+ "<td colspan='6'>"+r.getAddress()!=null?r.getAddress():""+"</td>"
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
										+ r.getVete()!=null?r.getVete():""
										+ "</td></tr>"
										+ "<tr><th>장애여부</th><td colspan='3'>"
										+ r.getHandi()!=null?r.getHandi():""
										+ "</td></tr>"
										+ "<tr><th>병역구분</th><td>"
										+ r.getMilit()!=null?r.getMilit():""
										+ "</td>"
										+ "<th>복무기간</th><td>"
										+ r.getMilitIniYear()!=null?r.getMilitIniYear():""+"."+r.getMilitIniMon()!=null?r.getMilitIniMon():""+" ~ "
										+ r.getMilitFinYear()!=null?r.getMilitFinYear():""+"."+r.getMilitFinMon()!=null?r.getMilitFinMon():""
										+ "</td></tr><tr><th>군별</th><td>"+r.getMilitKind()!=null?r.getMilitKind():""+"</td><th>계급</th>"
										+ "<td>"+r.getMilitRank()!=null?r.getMilitRank():""+"</td></tr>"
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
								+ "<tbody><tr><th>기간</th><td colspan='3'>"
								+ r.getHighIniYear()!=null?r.getHighIniYear():""+"."+r.getHighIniMon()!=null?r.getHighIniMon():""+" ~ "
								+ r.getHighFinYear()!=null?r.getHighFinYear():""+"."+r.getHighFinMon()!=null?r.getHighFinMon():""
								+ "</td></tr><tr><th>학교명</th><td>"+r.getHighName()!=null?r.getHighName():""+"</td><th>분류</th>"
								+ "<td>"+r.getHighKind()!=null?r.getHighKind():""+"</td></tr>"
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
								+ "<tr><th>기간</th><td colspan='5'>"
								+ r.getUnivIniYear()!=null?r.getUnivIniYear():""+"."+r.getUnivIniMon()!=null?r.getUnivIniMon():""+" ~ "
								+ r.getUnivFinYear()!=null?r.getUnivFinYear():""+"."+r.getUnivFinMon()!=null?r.getUnivFinMon():""
								+ "</td></tr><tr><th>학교명</th><td>"+r.getUnivName()!=null?r.getVete():""+"</td><th>분류</th>"
								+ "<td>"+r.getUnivKind()!=null?r.getUnivKind():""+"</td>"
								+ "<th>학점</th><td>"+r.getUnivScore()!=null?r.getUnivScore():""+"</td></tr><tr><th>주전공</th><td colspan='5'>"
								+ r.getUnivMajor()!=null?r.getUnivMajor():""
								+ "</td></tr></tbody>"
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
								+ "<tbody><tr><th>기간</th><td colspan='5'>"
								+ r.getGraduIniYear()!=null?r.getGraduIniYear():""+"."+r.getGraduIniMon()!=null?r.getGraduIniMon():""+" ~ "
								+ r.getGraduFinYear()!=null?r.getGraduFinYear():""+"."+r.getGraduFinMon()!=null?r.getGraduFinMon():""
								+ "</td></tr><tr><th>학교명</th><td>"
								+ r.getGraduName()!=null?r.getGraduName():""
								+ "</td><th>분류</th><td>"+r.getGraduKind()!=null?r.getGraduKind():""+"</td>"
								+ "<th>학점</th><td>"+r.getGraduScore()!=null?r.getGraduScore():""+"</td></tr><tr><th>주전공</th><td colspan='5'>"
								+ r.getGraduMajor()!=null?r.getGraduMajor():""
								+ "</td></tr></tbody>"
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
							+ "<tbody><tr><th>이름</th><td colspan='3'>"+r.getLicenName()!=null?r.getLicenName():""+"</td></tr>"
							+ "<tr><th>발행처/기관</th><td>"+r.getLicenInsti()!=null?r.getLicenInsti():""+"</td>"
							+ "<th>등급</th><td>"+r.getLicenGrad()!=null?r.getLicenGrad():""+"</td></tr></tbody></table>"
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
							+ "<tbody><tr><th>회사명</th><td>"+r.getJobName()!=null?r.getJobName():""+"</td><th>기간</th><td>"
							+ r.getJobIniYear()!=null?r.getJobIniYear():""+"."+r.getJobIniMon()!=null?r.getJobIniMon():""+" ~ "
							+ r.getJobFinYear()!=null?r.getJobFinYear():""+"."+r.getJobFinMon()!=null?r.getJobFinMon():""
							+ "</td>"
							+ "</tr><tr><th>직급</th><td>"+r.getJobRank()!=null?r.getJobRank():""
							+ "</td><th>부서</th><td>"+r.getJobDept()!=null?r.getJobDept():""+"</td></tr><tr>"
							+ "<th>담당업무</th><td colspan='3'>"+r.getJobContent()!=null?r.getJobContent():""
							+ "</td></tr><tr><th>퇴사사유</th><td colspan='3'>"
							+ r.getJobFire()!=null?r.getJobFire():""
							+ "</td></tr></tbody></table>"
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
							+ "<tbody><tr><th>외국어명</th><td>"+r.getLangName()!=null?r.getLangName():""
							+ "</td><th>시험명</th><td>"+r.getLangTest()!=null?r.getLangTest():""+"</td></tr>"
							+ "<tr><th>점수/등급</th><td>"+r.getLangScore()!=null?r.getLangScore():""+"</td><th>취득일</th><td>"
							+ r.getLangDateYear()!=null?r.getLangDateYear():""+"."
							+ r.getLangDateMon()!=null?r.getLangDateMon():""+"."
							+ r.getLangDateDay()!=null?r.getLangDateDay():""
							+ "</td></tr></tbody></table>"
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
							+ "<tbody><tr><th>수상명</th><td>"+r.getAwardName()!=null?r.getAwardName():""
							+ "</td><th>수상내용</th><td>"+r.getAwardContent()!=null?r.getAwardContent():""+"</td>"
							+ "</tr><tr><th>수여기관</th><td>"+r.getAwardInsti()!=null?r.getAwardInsti():""+"</td>"
							+ "<th>수상일</th><td>"
							+ r.getAwardDateYear()!=null?r.getAwardDateYear():""+"."
							+ r.getAwardDateMon()!=null?r.getAwardDateMon():""+"."
							+ r.getAwardDateDay()!=null?r.getAwardDateDay():""+"</td></tr></tbody></table>"
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
							+ "<tbody><tr><th>국가</th><td>"+r.getAbroadNation()!=null?r.getAbroadNation():""
							+ "</td><th>기관</th><td>"+r.getAbroadInsti()!=null?r.getAbroadInsti():""+"</td></tr><tr>"
							+ "<th>목적 및 내용</th><td colspan='3'>"+r.getAbroadCont()!=null?r.getAbroadCont():""
							+ "</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
			+ "</div></body></html>";

	StringReader strReader = new StringReader(htmlStr);
	xmlParser.parse(strReader);

	doc.close();
	writer.close();
	return "forward:/export_process.do";
	}
}
