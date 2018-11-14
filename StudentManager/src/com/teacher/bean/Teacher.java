package com.teacher.bean;

/**
 * 先生クラスの生成
 *
 * @author Sui
 */

public class Teacher {
	int id; // ID
	String teachername; // 先生の名前
	String course; // 先生の誕生日
	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return teachername
	 */
	public String getTeachername() {
		return teachername;
	}
	/**
	 * @param teachername セットする teachername
	 */
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	/**
	 * @return course
	 */
	public String getCourse() {
		return course;
	}
	/**
	 * @param course セットする course
	 */
	public void setCourse(String course) {
		this.course = course;
	}
	/* (非 Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", teachername=" + teachername + ", course=" + course + "]";
	}
	/**
	 * @param id
	 * @param teachername
	 * @param course
	 */
	public Teacher(int id, String teachername, String course) {
		this.id = id;
		this.teachername = teachername;
		this.course = course;
	}
	/**
	 *
	 */
	public Teacher() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

}
