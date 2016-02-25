package Day40_060225.net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Day40_060225.net.board.db.BoardBean;
import Day40_060225.net.board.db.BoardDAO;

public class BoardDetailAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		int num = Integer.parseInt(request.getParameter("num"));
		boarddao.setReadCountUpdate(num);
		boarddata = boarddao.getDetail(num);

		if (boarddata == null) {
			System.out.println("상세보기 실패");
			return null;
		}
		System.out.println("상세보기 성공");

		request.setAttribute("boarddata", boarddata);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./Day40_060225/board/qna_board_view.jsp");
		return forward;
	}
}
