package Day40_060225.net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Day40_060225.net.board.db.BoardBean;
import Day40_060225.net.board.db.BoardDAO;

public class BoardModifyView implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("euc-kr");

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		int num = Integer.parseInt(request.getParameter("num"));
		boarddata = boarddao.getDetail(num);

		if (boarddata == null) {
			System.out.println("(����)�󼼺��� ����");
			return null;
		}
		System.out.println("(����)�󼼺��� ����");

		request.setAttribute("boarddata", boarddata);
		forward.setRedirect(false);
		forward.setPath("./Day40_060225/board/qna_board_modify.jsp");
		return forward;
	}
}
