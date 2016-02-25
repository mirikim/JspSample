package Day40_060225.net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Day40_060225.net.board.db.BoardBean;
import Day40_060225.net.board.db.BoardDAO;

public class BoardReplyView implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		int num = Integer.parseInt(request.getParameter("num"));

		boarddata = boarddao.getDetail(num);

		if (boarddao == null) {
			System.out.println("답장 페이지 이동 실패");
			return null;
		}
		System.out.println("답장 페이지 이동 완료");

		request.setAttribute("boarddata", boarddata);

		forward.setRedirect(false);
		forward.setPath("./Day40_060225/board/qna_board_reply.jsp");
		return forward;
	}
}
