package co.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.exam.command.ExamCommandCreate;
import co.exam.command.ExamCommandCreateForm;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
    }
    public void init(ServletConfig config) throws ServletException {
		// 해쉬맵 구조를 put()로 적어준다
//		cont.put("/index.do", new IndexCommand()); // 홈페이지 호출
//		board
//		등록
    	cont.put("/examCreate.do", new ExamCommandCreate());
//		등록폼
    	cont.put("/examCreateForm.do", new ExamCommandCreateForm());
//		수정
//		삭제
//		상세조회
//		목록
		cont.put("/examList.do", new ExamCommandSelectList()); // "url"
//		수정폼
	}
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());

		// 로그 처리
		System.out.println("path=" + path);
		// 권한 체그
		Command commandImpl = cont.get(path); // 실행 클래스를 선택한다.
		String page = null;
		if(commandImpl != null) {
			page = commandImpl.excute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
			dispatcher.forward(request, response);
		} else {
			response.getWriter().append("잘못된 요청");
		}
	}

}
