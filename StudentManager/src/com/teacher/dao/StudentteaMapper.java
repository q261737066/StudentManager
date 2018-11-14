package com.teacher.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.jdbc.core.RowMapper;
import com.student.bean.Studenttea;
import com.teacher.bean.Teacher;

/**
 * StudentMapper数据库映射
 *
 * @ClassName StudentMapper
 */
public class StudentteaMapper implements RowMapper<Studenttea> {

	public Studenttea mapRow(ResultSet rs, int rowNum) throws SQLException {
		Studenttea student = new Studenttea();
		student.setStuid(rs.getInt(1));
		student.setStuname(rs.getString(2));
		student.setStubirthday(getStringDate(rs.getString(3)));
		student.setStuage(rs.getInt(4));
		student.setStuclassid(rs.getInt(5));
		student.setTeaid(rs.getInt(6));
		student.setTeacourse(rs.getString(7));
		return student;
}




	/**
	 * 获取日期
	 *
	 * @return 返回日期字符串格式yyyy-MM-dd
	 * @throws ParseException
	 */
	private String getStringDate(String birthday) {

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date dateString = new Date();
		String strRtnDate = "";
		try {
			dateString = formatter.parse(birthday);
			strRtnDate = new SimpleDateFormat("yyyy-MM-dd").format(dateString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return strRtnDate;
	}

}