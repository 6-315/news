package util;

import java.util.UUID;

/**
 * class 生成uuid
 * 
 * @author 创建 JXX
 * @modify JXX 2018/04/12
 *
 */
public class BuildUuid {
	public static String getUuid() {
		UUID uuid = UUID.randomUUID();
		String s = uuid.toString();
		return s;
	}
}
