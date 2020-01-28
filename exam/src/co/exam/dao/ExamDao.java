package co.exam.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.dto.ExamDto;

public class ExamDao extends DAO {
	public List<ExamDto> selectList() {
		List<ExamDto> list = new ArrayList<ExamDto>();
		try {
			String sql = "select * from exam order by exam_no desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);

			while (rs.next()) {
				ExamDto dto = new ExamDto();
				dto.setExam_no(rs.getInt("exam_no"));
				dto.setExam_nm(rs.getString("exam_nm"));
				dto.setQuest_cnt(rs.getInt("quest_cnt"));
				dto.setExam_time(rs.getInt("exam_time"));
				dto.setQuest_group(rs.getString("guest_group"));
				dto.setExam_desc(rs.getString("exam_desc"));
				dto.setExam_type(rs.getString("exam_type"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public int insert(ExamDto dto) {
		int r = 0;
		try {
			String sql = "insert into exam (exam_no, exam_nm, quest_cnt, exam_time, quest_group, exam_desc, exam_type)"
					+ " values((select nvl(max(exam_no),0)+1 from exam),?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getExam_nm());
			psmt.setInt(2, dto.getQuest_cnt());
			psmt.setInt(3, dto.getExam_time());
			psmt.setString(4, dto.getQuest_group());
			psmt.setString(5, dto.getExam_desc());
			psmt.setString(6, dto.getExam_type());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}

	public void delete(int exam_no) {

		try {
			String sql = "delete from exam where exam_no = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, exam_no);
			psmt.executeUpdate();
			System.out.println("삭제 되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

}
