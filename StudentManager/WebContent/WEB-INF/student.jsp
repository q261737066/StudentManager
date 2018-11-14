<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>学员管理</title>
<link rel="stylesheet" type="text/css" href="./css/all.css" />
<style type="text/css">
</style>
<script type="text/javascript">
	function addCheckForm() {
		var form = document.getElementById('addForm');

		var input_name = document.getElementById('addname').value;
		var input_birthday = document.getElementById('addbirthday').value;
		var input_age = document.getElementById('addage').value;
		var input_score = document.getElementById('addscore').value;
		var input_score = document.getElementById('addtelephone').value;
		if (input_name == "" || input_name == null) {
			alert("请输入学員姓名！！！");
			return false;
		}

		if (input_birthday == "" || input_birthday == null) {
			alert("请输入学員出生年月！！！");
			return false;
		}

		if (input_age == "" || input_age == null) {
			alert("请输入学員年龄！！！");
			return false;
		}

		if (input_score == "" || input_score == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		if (input_telephone == "" || input_telephone == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		form.submit();
		return true;
	}

	function delCheckForm() {
		var form = document.getElementById('delForm');
		var flag = 0;
		var input_id = document.getElementById("delid").value;
		if (input_id == "" || input_id == null) {
			alert("请输入削除学員id！！！");
			return false;
		}

		if (input_id.match(/[^0-9]+/)) {
			flag = 1;
		}

		if (flag) {
			window.alert('数字以外が入力できません');
			return false; // 送信を中止
		}

		form.submit();
		return true;
	}

	function editCheckForm() {
		var form = document.getElementById('editForm');

		var input_id = document.getElementById('editid');
		var input_name = document.getElementById('editname');
		var input_birthday = document.getElementById('editbirthday');
		var input_age = document.getElementById('editage');
		var input_score = document.getElementById('editscore');
		var input_classid = document.getElementById('classid');

		if (input_id == "" || input_id == null) {
			alert("请输入学員id！！！");
			return false;
		}

		if (input_name == "" || input_name == null) {
			alert("请输入学員姓名！！！");
			return false;
		}

		if (input_birthday == "" || input_birthday == null) {
			alert("请输入学員出生年月！！！");
			return false;
		}

		if (input_age == "" || input_age == null) {
			alert("请输入学員年龄！！！");
			return false;
		}

		if (input_score == "" || input_score == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		form.submit();
		return true;
	}
</script>
</head>
<body>
	<img src="./images/header.jpg" /> ${msg}
	<h1 align="center">学员信息管理</h1>

	<div id="all_comm" class="all">
		<h2 align="center">学员信息一览</h2>
		<table id="items">
			<tr>
				<td>学生id</td>
				<td>学生姓名</td>
				<td>出生年月</td>
				<td>年龄</td>
				<td>班级</td>
				<td>老师id</td>
				<td>老师课程</td>
			</tr>
			<c:forEach items="${studentteas}" var="studenttea"  >
				<tr>
					<td id="stuid${studenttea.id }">${studenttea.stuid}</td>
					<td id="stuid${studenttea.id }">${studenttea.stuname}</td>
					<td id="stuid${studenttea.id}">${studenttea.stubirthday}</td>
					<td id="stuid${studenttea.id }">${studenttea.stuage}</td>
					<td id="stuid${studenttea.id}">${studenttea.stuclassid}</td>
					<td id="stuid${studenttea.id}">${studenttea.teaid}</td>
					<td id="stuid${studenttea.id}">${studenttea.teacourse}</td>

				</tr>
			</c:forEach>
		</table>
		<div id="add_comm" class="all" align="center">
			<h2>学生の検索</h2>
			<form action="queryByName" method="post">
				<input type="text" placeholder="氏名" name="name"> <input
					type="submit" value="学生の検索">
			</form>
		</div>


		<div id="add_comm" class="all" align="center">
			<h2 id="edit_title">学生の追加</h2>
			<form id="addForm" action="add" method="post" class="checkform">
				<input id="addname" type="text" placeholder="氏名" name="name" /> <input
					id="addbirthday" type="text" placeholder="生年月日" name="birthday" />
				<input onblur="checkFormat(this.value) id="addage" type="text"
					placeholder="年齢" name="age" class="number" /><span
					class="alertarea"></span>
				</p>
				<input id="addscore" type="text" placeholder="成績" name="score" /> <input
					id="addtelephone" type="text" placeholder="電話番号" name="telephone" />


				<input type="submit" value="添加" onClick="addCheckForm()" />
			</form>
		</div>

		<div id="edit_comm" class="all">
			<h2>删除学员</h2>
			<form id="delForm" action="deleteById" method="post">
				<input id="delid" type="text" placeholder="要删除的id" name="id" /> <input
					type="submit" value="删除学员" onclick="delCheckForm()" />
			</form>

			<h2 id="edit_title">编辑学员</h2>
			<form id="editForm" action="update" method="post">
				<input id="editid" type="text" placeholder="要修改的id" id="edit_id"
					name="id" placeholder="要修改的id为" /><br> <input id="editname"
					type="text" placeholder="姓名" name="name" /> <input
					id="editbirthday" type="text" placeholder="出生年月" name="birthday" />
				<input id="editage" type="text" placeholder="年龄" name="age" /> <input
					id="editscore" type="text" placeholder="分数" name="score" /> <input
					id="edittelephone" type="text" placeholder="電話番号" name="telephone" />
				<input type="button" value="确定修改" onclick="editCheckForm()" />
			</form>
		</div>


		<!-- <!--  =以上、学生検索Indexの方法





	</div>

	<div id="add_comm" class="all" align="left">
		<h2>查找学员</h2>
		<form action="queryByName" method="post">
			<input type="text" placeholder="姓名" name="name"> <input
				type="submit" value="查找学员">
		</form>

		<h2 id="edit_title">添加学员</h2>
		<form id="addForm" action="add" method="post">
			<input id="addname" type="text" placeholder="姓名" name="name" /> <input
				id="addbirthday" type="text" placeholder="出生年月" name="birthday" />
			<input id="addage" type="text" placeholder="年龄" name="age" /> <input
				id="addscore" type="text" placeholder="分数" name="score" /> <input
				type="button" value="添加" onClick="addCheckForm()" />
		</form>
	</div>

	<div id="edit_comm" class="all">
		<h2>删除学员</h2>
		<form id="delForm" action="deleteById" method="post">
			<input id="delid" type="text" placeholder="要删除的id" name="id" /> <input
				type="button" value="删除学员" onclick="delCheckForm()" />
		</form>

		<h2 id="edit_title">编辑学员</h2>
		<form id="editForm" action="update" method="post">
			<input id="editid" type="text" placeholder="要修改的id" id="edit_id"
				name="id" placeholder="要修改的id为" /><br> <input id="editname"
				type="text" placeholder="姓名" name="name" /> <input
				id="editbirthday" type="text" placeholder="出生年月" name="birthday" />
			<input id="editage" type="text" placeholder="年龄" name="age" /> <input
				id="editscore" type="text" placeholder="分数" name="score" /> <input
				type="button" value="确定修改" onclick="editCheckForm()" />
		</form>
	</div> -->
		-->
</body>
</html>