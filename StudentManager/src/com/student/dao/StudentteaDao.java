package com.student.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.student.bean.Studenttea;
import com.teacher.dao.StudentteaMapper;

public class StudentteaDao {
	// DAO JdbcTemplate
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List<Studenttea> queryAll() {
		String sql = "select student.id as stuid,student.name as stuname,student.birthday as stubirthday,student.age as stuage,student.classid as stuclassid,teacher.id as teaid ,teacher.course as teacourse from student\r\n" +
				"right join teacher on student.id=teacher.id";
		// 将???果映射到Student?中，添加到list中，并返回
		ArrayList<Studenttea> studentList = new ArrayList<Studenttea>();
		studentList = (ArrayList<Studenttea>) jdbcTemplate.query(sql, new StudentteaMapper());

		return studentList;
	}

	/**
	 *
	 * @param studentList
	 * @return
	 */


}