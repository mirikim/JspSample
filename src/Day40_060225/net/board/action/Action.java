package Day40_060225.net.board.action;

import javax.servlet.http.*;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}