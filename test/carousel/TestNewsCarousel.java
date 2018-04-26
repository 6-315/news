package carousel;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.news.carousel.domain.DTO.NewsCarouselDTO;
import com.news.carousel.service.CarouselManagementService;

/**
 * 
 * @author 哈哈哈哈哈哈
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext*.xml" })
public class TestNewsCarousel {
	@Resource
	private CarouselManagementService carouselManagementService;

	public CarouselManagementService getCarouselManagementService() {
		return carouselManagementService;
	}

	public void setCarouselManagementService(CarouselManagementService carouselManagementService) {
		this.carouselManagementService = carouselManagementService;
	}

	@Test
	public void testListCarousel() {
		List<NewsCarouselDTO> listNewsCarouselDTO = carouselManagementService.listNewsCarouselDTO();
		for (NewsCarouselDTO newsCarouselDTO : listNewsCarouselDTO) {
			System.out.println(newsCarouselDTO.getNewsCarouselInfo());
			System.out.println(newsCarouselDTO.getNewsInfo());
		}
	}

}
