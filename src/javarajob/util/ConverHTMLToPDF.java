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

			// ��Ʈ ���� ���� (�ѱ� ������ �ϱ� ���� ���� �ʿ���
			interfaceProps.put(HTMLWorker.FONT_PROVIDER, dfp);
			StringBuffer sb = new StringBuffer();
			sb.append("<!DOCTYPE html>" + "<html>" + "<head>" + "</head>" + "<body>"
					+ "<div class='section-content new ng-scope' id='resumeFile'>"
					+ "<div class='specs edit-spec ng-scope basic-information'>" + "<div class='subtitle ng-scope'>"
					+ "<div class='ng-binding must'>�⺻ ����</div>" + "<span class='ng-scope'>(�ʼ��Է�)</span>" + "</div>"
					+ "<div class='content ng-scope'>" + "<div class='category-wrapper ng-scope' data-category='0'>"
					+ "<div class='category-repeater' data-category-number=''><div class='image'><div class='image-area'>"
					+ "<img src='upload/default_1.png' width='100%'></div></div><table border class='basic-information-table'>"
					+ "<colgroup><col width='125px'><col width='130px'><col width='100px'><col width='0px'><col width='140px'>"
					+ "<col width='80px'><col width='50px'><col width='95px'></colgroup><tbody><tr><th>�̸�</th><td>ȫ�浿</td>"
					+ "<th>�������</th><td colspan='3'>1999.12.12</td><th>����</th><td>����</td></tr><tr><th>��ȭ��ȣ</th>"
					+ "<td colspan='3'>02-1234-1234</td><th>�޴�����ȣ</th><td colspan='3'>010-1234-1234</td></tr><tr><th>�̸���</th>"
					+ "<td colspan='3'>hkd123@gmail.com</td><th>SNS</th><td colspan='3'></td></tr><tr><th>�ּ�</th>"
					+ "<td colspan='7'>����� ������</td></tr></tbody></table></div></div></div></div>"
					+ "<div class='specs edit-spec ng-scope advantage'><div class='subtitle ng-scope'>"
					+ "<div class='ng-binding must'>���������</div><span class='ng-scope'>(�ʼ��Է�)</span></div>"
					+ "<div class='content ng-scope'><div class='category-wrapper ng-scope' data-category='9'>"
					+ "<div class='category-repeater' data-category-number=''><table border class='advantage-table'>"
					+ "<colgroup><col width='120px'><col width='320px'><col width='120px'><col width='320px'></colgroup>"
					+ "<tbody><tr><th>���ƻ���</th><td colspan='3'>"
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
					+ "<td>����</td></tr></tbody></table></div></div></div></div><div class='specs edit-spec ng-scope highschool'>"
					+ "<div class='subtitle ng-scope'><div class='ng-binding must'>����б�</div><span class='ng-scope'>(�ʼ��Է�)</span></div>"
					+ "<div class='content ng-scope'>"
					+ "<div class='category-wrapper ng-scope' data-category='1'>"
					+ "<table border data-category-number=''class='ng-scope highschool-table category-repeater'><colgroup>"
					+ "<col width='120px'><col width='320px'><col width='120px'><col width='320px'></colgroup><tbody><tr><th>�Ⱓ</th>"
					+ "<td colspan='3'>�׳� �ٴ�</td></tr><tr><th>�б���</th><td>��û������б�</td><th>�з�</th><td>��ü��</td></tr></tbody>"
					+ "</table></div></div></div><div class='specs edit-spec ng-scope university'><div class='subtitle ng-scope'>"
					+ "<div class='ng-binding'>���б�</div></div><div class='content ng-scope'>"
					+ "<div class='category-wrapper ng-scope' data-category='2'>"
					+ "<table border data-category-number=''class='ng-scope university-table category-repeater'><colgroup><col width='120px'>"
					+ "<col width='240px'><col width='100px'><col width='130px'><col width='100px'><col width='190px'></colgroup><tbody>"
					+ "<tr><th>�Ⱓ</th><td colspan='5'>�� �ٴ�</td></tr><tr><th>�б���</th><td>������ ���б�</td><th>�з�</th><td>27����</td>"
					+ "<th>����</th><td>97</td></tr><tr><th>������</th><td colspan='5'>�ѼŻѼźμ�������</td></tr></tbody></table></div></div>"
					+ "</div><div class='specs edit-spec ng-scope graduate-school'><div class='subtitle ng-scope'>"
					+ "<div class='ng-binding'>���п�</div></div><div class='content ng-scope'>"
					+ "<div class='category-wrapper ng-scope' data-category='3'>"
					+ "<table border data-category-number=''class='ng-scope graduate-school-table category-repeater'><colgroup>"
					+ "<col width='120px'><col width='240px'><col width='100px'><col width='150px'><col width='80px'><col width='190px'>"
					+ "</colgroup><tbody><tr><th>�Ⱓ</th><td colspan='5'></td></tr><tr><th>�б���</th><td></td><th>�з�</th><td></td>"
					+ "<th>����</th><td></td></tr><tr><th>������</th><td colspan='5'></td></tr></tbody></table>"
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
