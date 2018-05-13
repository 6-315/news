package ppp;

import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.news.newsinfo.domain.News_Content;
import com.news.newsinfo.domain.News_NewsInfo;
import com.news.newsinfo.domain.DTO.AllNavigationNewsDTO;
import com.news.newsinfo.domain.DTO.SelectAllDTO;
import com.news.newsinfo.service.NewsInfoManagementService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext*.xml" })
public class jjj {
	private News_NewsInfo news;

	public News_NewsInfo getNews() {
		return news;
	}

	public void setNews(News_NewsInfo news) {
		this.news = news;
	}

	private NewsInfoManagementService newsInfoManagementService;

	public NewsInfoManagementService getNewsInfoManagementService() {
		return newsInfoManagementService;
	}

	public void setNewsInfoManagementService(NewsInfoManagementService newsInfoManagementService) {
		this.newsInfoManagementService = newsInfoManagementService;
	}

	@Test
	public void ff() {
		//List<SelectAllDTO> listSelectAllDTO = newsInfoManagementService.listSelectAllDTO(String string);
		//System.out.println(listSelectAllDTO.size());
		//System.out.println(listSelectAllDTO);
	}

	@Test
	public void gg() {
		List<News_NewsInfo> listNews = newsInfoManagementService.getNews();
		System.out.println(listNews);
	}

}