package Day36_060219;

public class HangulUtil {

	public static String toKor(String eng) {
		try {
			return new String(eng.getBytes("8859_1"), "euc-kr");
			//eng.getBytes("8859_1"), "euc-kr" 한글이 바르게 입력되도록 인코딩!

		} catch (Exception e) {
			return null;
		}
	}
}
