package co.exam.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.common.Command;
import co.dto.ExamDto;
import co.exam.dao.ExamDao;

public class ExamCommandCreate implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ExamDto dto = new ExamDto();
		dto.setExam_nm(request.getParameter("tname"));
		dto.setQuest_cnt(Integer.parseInt(request.getParameter("num")));
		dto.setExam_time(Integer.parseInt(request.getParameter("time")));
		dto.setQuest_group(request.getParameter("subject"));
		dto.setExam_desc(request.getParameter("text"));
		dto.setExam_type(request.getParameter("random"));
		
		//등록처리
		ExamDao dao = new ExamDao();
		dao.insert(dto);
		return "examlist.do";
		
	}

}
