package com.student.bean;

public class Student {

private  Integer id;
private  String name;
private  String birthday;
private  Integer age;
private  Integer score;
private  Integer classid;
/**
 * @return id
 */
public Integer getId() {
	return id;
}
/**
 * @param id セットする id
 */
public void setId(Integer id) {
	this.id = id;
}
/**
 * @return name
 */
public String getName() {
	return name;
}
/**
 * @param name セットする name
 */
public void setName(String name) {
	this.name = name;
}
/**
 * @return birthday
 */
public String getBirthday() {
	return birthday;
}
/**
 * @param birthday セットする birthday
 */
public void setBirthday(String birthday) {
	this.birthday = birthday;
}
/**
 * @return age
 */
public Integer getAge() {
	return age;
}
/**
 * @param age セットする age
 */
public void setAge(Integer age) {
	this.age = age;
}
/**
 * @return score
 */
public Integer getScore() {
	return score;
}
/**
 * @param score セットする score
 */
public void setScore(Integer score) {
	this.score = score;
}
/**
 * @return classid
 */
public Integer getClassid() {
	return classid;
}
/**
 * @param classid セットする classid
 */
public void setClassid(Integer classid) {
	this.classid = classid;
}
/* (非 Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "Student [id=" + id + ", name=" + name + ", birthday=" + birthday + ", age=" + age + ", score=" + score
			+ ", classid=" + classid + "]";
}
/**
 * @param id
 * @param name
 * @param birthday
 * @param age
 * @param score
 * @param classid
 */
public Student(Integer id, String name, String birthday, Integer age, Integer score, Integer classid) {
	this.id = id;
	this.name = name;
	this.birthday = birthday;
	this.age = age;
	this.score = score;
	this.classid = classid;
}
/**
 *
 */
public Student() {
	super();
	// TODO 自動生成されたコンストラクター・スタブ
}







}
