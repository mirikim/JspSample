package Day36_060219;

public class HangulUtil {

	public static String toKor(String eng) {
		try {
			return new String(eng.getBytes("8859_1"), "euc-kr");
			//eng.getBytes("8859_1"), "euc-kr" �ѱ��� �ٸ��� �Էµǵ��� ���ڵ�!

		} catch (Exception e) {
			return null;
		}
	}
}
