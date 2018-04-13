package user;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.news.user.domain.UserInfo;
import com.news.user.domain.VO.UserNewsCountVO;
import com.news.user.service.UserService;

/**
 * 测试user模块测试类
 * 
 * @author 创建 JXX
 * @date 2018/04/12
 * @modify JXX 2018/04/12
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext*.xml" })
public class TestUserService {
	@Resource
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Test
	public void testPageQuery() {
		UserNewsCountVO userNewsCountVO = new UserNewsCountVO();
		userService.listUserInfoByPage(userNewsCountVO);
	}

	@Test
	public void testRemoveUser() {
		UserInfo userInfo = new UserInfo();
		userInfo.setUserId("04cb42ec-c64b-4f7a-8890-b57534607102");
		userService.removeUser(userInfo);
	}

	@Test
	public void updateUser() {
		UserInfo userInfo = new UserInfo();
		userInfo.setUserId("9baff76e-ba79-4dd6-91d5-0d04ddbbddc6");
		userInfo.setUserName("rrrr");
		userInfo.setUserPassword("eweewe");
		userService.updateUser(userInfo);
	}

}
