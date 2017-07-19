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
	// Document ����
	doc.open();
	XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
	
	// CSS
	CSSResolver cssResolver = new StyleAttrCSSResolver();
	CssFile cssFile = helper.getCSS(new FileInputStream("C:\\a01_prog\\eclipse\\workspace_prj\\javarajob\\WebContent\\css\\resume2.css"));
	cssResolver.addCss(cssFile);
	// HTML, ��Ʈ ����
	XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
	fontProvider.register("C:\\Windows\\Fonts\\malgun.ttf", "malgungothic"); // MalgunGothic��
	CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);

	HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
	htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());

	// Pipelines
	PdfWriterPipeline pdf = new PdfWriterPipeline(doc, writer);
	HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
	CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);

	XMLWorker worker = new XMLWorker(css, true);
	XMLParser xmlParser = new XMLParser(worker, Charset.forName("UTF-8"));

	// ��Ʈ �������� ��Ī���� ��� "MalgunGothic"�� html �ȿ� ��Ʈ�� �����Ѵ�.
	String htmlStr = "<!DOCTYPE html>" + "<html>" + "<body style='font-family:malgungothic;'>"
			+ "<h1 align='center'>�̷¼�</h1>"
			+ "<div class='section-content new ng-scope' id='resumeFile'>"
				+ "<div class='specs edit-spec ng-scope basic-information'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding must'>"
							+ "�⺻ ���� "
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
										+ "<th width='60px'>�̸�</th><td width='78px'>ȫ�浿</td>"
										+ "<th width='55px'>�������</th><td colspan='2'>1999.12.12</td>"
										+ "<th width='30px'>����</th><td width='57px'>����</td>"
									+ "</tr><tr>"
										+ "<th>��ȭ��ȣ</th>"
										+ "<td colspan='2'>02-1234-1234</td><th>�޴�����ȣ</th><td colspan='3'>010-1234-1234</td>"
									+ "</tr><tr>"
										+ "<th>�̸���</th>"
										+ "<td colspan='2'>hkd123@gmail.com</td><th>SNS</th><td colspan='3'></td>"
									+ "</tr><tr>"
										+ "<th>�ּ�</th>"
										+ "<td colspan='6'>����� ������</td>"
									+ "</tr>"
									+ "</tbody>"
								+ "</table>"
							+ "</div>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope advantage'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding must'>���������"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='9'>"
							+ "<div class='category-repeater' data-category-number=''>"
								+ "<table border class='advantage-table'>"
									+ "<tbody>"
										+ "<tr><th>���ƻ���</th><td colspan='3'>"
										+ "<input type='radio' name='vete' checked='checked' value='tru' class='ng-pristine ng-untouched ng-valid' />���"
										+ "<input type='radio' name='vete' value='fals'class='ng-pristine ng-untouched ng-valid' />����</td></tr>"
										+ "<tr><th>��ֿ���</th><td colspan='3'>"
										+ "<input type='radio' name='handi' value='tru' checked='checked'class='ng-pristine ng-untouched ng-valid' />���"
										+ "<input type='radio' name='handi' value='fals'class='ng-pristine ng-untouched ng-valid' />����</td></tr>"
										+ "<tr><th>��������</th><td>"
										+ "<input type='radio' name='milit' checked='checked'class='ng-pristine ng-untouched ng-valid' value='0' />����"
										+ "<input type='radio' name='milit'class='ng-pristine ng-untouched ng-valid' value='1' />����"
										+ "<input type='radio' name='milit'class='ng-pristine ng-untouched ng-valid' value='2' />����</td>"
										+ "<th>�����Ⱓ</th><td>2016.01 ~ 2017.10</td></tr><tr><th>����</th><td>����</td><th>���</th>"
										+ "<td>����</td></tr>"
									+ "</tbody>"
								+ "</table>"
							+ "</div>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope highschool'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding must'>����б�"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='1'>"
							+ "<table border data-category-number=''class='ng-scope highschool-table category-repeater'>"
								+ "<tbody><tr><th>�Ⱓ</th><td colspan='3'>�׳� �ٴ�</td></tr><tr><th>�б���</th><td>��û������б�</td><th>�з�</th><td>��ü��</td></tr>"
								+ "</tbody>"
							+ "</table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope university'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>���б�"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='2'>"
							+ "<table border data-category-number=''class='ng-scope university-table category-repeater'>"
								+ "<tbody>"
								+ "<tr><th>�Ⱓ</th><td colspan='5'>�� �ٴ�</td></tr><tr><th>�б���</th><td>������ ���б�</td><th>�з�</th><td>27����</td>"
								+ "<th>����</th><td>97</td></tr><tr><th>������</th><td colspan='5'>�ѼŻѼźμ�������</td></tr></tbody>"
							+ "</table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
				+ "<div class='specs edit-spec ng-scope graduate-school'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>���п�"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='3'>"
							+ "<table border data-category-number=''class='ng-scope graduate-school-table category-repeater'>"
								+ "<tbody><tr><th>�Ⱓ</th><td colspan='5'></td></tr><tr><th>�б���</th><td></td><th>�з�</th><td></td>"
								+ "<th>����</th><td></td></tr><tr><th>������</th><td colspan='5'> </td></tr></tbody>"
							+ "</table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope certificate'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>�ڰ�/����"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='4'>"
							+ "<table data-category-number='' class='ng-scope certificate-table category-repeater'>"
							+ "<tbody><tr><th>�̸�</th><td colspan='3'>��������</td></tr><tr><th>����ó/���</th><td>�߸޿���������</td>"
							+ "<th>���</th><td>����� 27��</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope career'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>���"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='5'>"
							+ "<table data-category-number='' class='ng-scope career-table category-repeater'>"
							+ "<tbody><tr><th>ȸ���</th><td>��¼�� ȸ��</td><th>�Ⱓ</th><td>2005.3 ~ 2016.8</td>"
							+ "</tr><tr><th>����</th><td>����</td><th>�μ�</th><td>ȭ���û�Һ�</td></tr><tr>"
							+ "<th>������</th><td colspan='3'>����ȭ��� �Һ��� û��</td></tr><tr><th>������</th><td colspan='3'>"
							+ "�ذ�</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope language'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>����"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='6'>"
							+ "<table data-category-number='' class='ng-scope language-table category-repeater'>"
							+ "<tbody><tr><th>�ܱ����</th><td>����</td><th>�����</th><td>TOEIC</td></tr>"
							+ "<tr><th>����/���</th><td>12</td><th>�����</th><td>2016.08.23</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"		// pass
					
				+ "<div class='specs edit-spec ng-scope award'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>������"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='7'>"
							+ "<table data-category-number='' class='ng-scope award-table category-repeater'>"
							+ "<tbody><tr><th>�����</th><td>���ٻ�</td><th>���󳻿�</th><td>���ٻ�</td></tr><tr><th>�������</th>"
							+ "<td>��û������б�</td><th>������</th><td>2008.09.12</td></tr></tbody></table>"
						+ "</div>"
					+ "</div>"
				+ "</div>"
					
				+ "<div class='specs edit-spec ng-scope abroad'>"
					+ "<div class='subtitle ng-scope'>"
						+ "<div class='ng-binding'>�ؿܿ���"
						+ "</div>"
					+ "</div>"
					+ "<div class='content ng-scope'>"
						+ "<div class='category-wrapper ng-scope' data-category='8'>"
							+ "<table data-category-number='' class='ng-scope abroad-table category-repeater'>"
							+ "<tbody><tr><th>����</th><td>���� �� ����</td><th>���</th><td>���� �� ���ٰ�</td></tr><tr>"
							+ "<th>���� �� ����</th><td colspan='3'>���� �� ���ٴ� �� �ڲ� ���������</td></tr></tbody></table>"
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
