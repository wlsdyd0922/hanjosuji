package job.controller.member;

import java.io.IOException;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CompanyInfoParSer {
	private Logger log = LoggerFactory.getLogger(getClass());

	public void CompanyInfo() throws IOException {
		String search = "아이티뱅크";
		Connection.Response response = Jsoup.connect("https://www.jobplanet.co.kr/search/companies/"+search).method(Connection.Method.GET).execute();
		Document document = response.parse();
		
		Elements btnK = document.select("section>a");
		List<Element> list = btnK;

		log.debug(list.toString());
	}
}
