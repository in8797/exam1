package co.exam.dao;

import java.sql.SQLException;

import co.dto.QuestDto;

public class QuestDao extends DAO {
//	public List<ExamDto> selectList() {
//		List<ExamDto> list = new ArrayList<ExamDto>();
//		try {
//			String sql = "select * from Q order by exam_no desc";
//			psmt = conn.prepareStatement(sql);
//			rs = psmt.executeQuery(sql);
//
//			while (rs.next()) {
//				ExamDto dto = new ExamDto();
//				dto.setExam_no(rs.getInt("exam_no"));
//				dto.setExam_nm(rs.getString("exam_nm"));
//				dto.setQuest_cnt(rs.getInt("quest_cnt"));
//				dto.setExam_time(rs.getInt("exam_time"));
//				dto.setQuest_group(rs.getString("guest_group"));
//				dto.setExam_desc(rs.getString("exam_desc"));
//				dto.setExam_type(rs.getString("exam_type"));
//				list.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//
//		return list;
//	}

	public int insert(QuestDto dto) {
		int r = 0;
		try {
			String sql = "insert into Quest (quest_no, quest_content, quest_type, answer1, answer2, answer3, answer4, right_answer, explain)"
					+ " values((select nvl(max(quest_no),0)+1 from Quest),?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getQuest_content());
			psmt.setString(2, dto.getQuest_type());
			psmt.setString(3, dto.getAnswer1());
			psmt.setString(4, dto.getAnswer2());
			psmt.setString(5, dto.getAnswer3());
			psmt.setString(6, dto.getAnswer4());
			psmt.setString(7, dto.getRight_answer());
			psmt.setString(8, dto.getExplain());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}

//	public void delete(int exam_no) {
//
//		try {
//			String sql = "delete from exam where exam_no = ?";
//			psmt = conn.prepareStatement(sql);
//			psmt.setInt(1, exam_no);
//			psmt.executeUpdate();
//			System.out.println("삭제 되었습니다.");
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//	}

}
