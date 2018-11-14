package com.student.controller;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.student.bean.Studenttea;
import com.student.dao.StudentteaDao;
@Controller
public class StudentController {
	// コントローラ
	@RequestMapping(value = "/all")
	public String queryAll(Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		// 从ioc容器中?取dao
		StudentteaDao studao = (StudentteaDao) context.getBean("dao");
		ArrayList<Studenttea> studentList = new ArrayList<Studenttea>();
		studentList = (ArrayList<Studenttea>) studao.queryAll();
		model.addAttribute("studentteas", studentList);
		return "student";
	}

}
