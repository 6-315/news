package util;

import java.util.UUID;

public class uuid {
	// 手动生成uuid
	public static String getUuid() {
		UUID uuid = UUID.randomUUID();
		String s = uuid.toString();
		return s;
	}
}
