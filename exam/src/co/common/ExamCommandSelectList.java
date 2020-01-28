package co.common;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.dto.ExamDto;
import co.exam.dao.ExamDao;

public class ExamCommandSelectList implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ExamDao dao = new ExamDao();
		List<ExamDto> list = new ArrayList<ExamDto>();
		list = dao.selectList();
		request.setAttribute("list", list);

		return "exam/main.jsp";
	}

}
