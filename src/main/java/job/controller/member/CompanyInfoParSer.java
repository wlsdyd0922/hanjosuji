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

	public void CompanyInfo(String search) throws IOException {
		String url = "https://www.jobplanet.co.kr";
		Connection.Response response = Jsoup.connect(url+"/search/companies/"+search).method(Connection.Method.GET).execute();
		Document document = response.parse();
		
		Elements searchres = document.select("section>div>div>div>a");
		
		for(Element a:searchres) {
			Connection.Response response1 = Jsoup.connect(url+a.attr("href")).method(Connection.Method.GET).execute();
			Document document1 = response1.parse();
			
			String title = document1.select("h1.tit").text();
			String industry = document1.select(".category").text();
			Elements info = document1.select(".info_item");
			
			log.debug(title);
			log.debug(industry);
			
			for(Element b: info) {
				log.debug(b.ownText());
			}
		}
	}
}
