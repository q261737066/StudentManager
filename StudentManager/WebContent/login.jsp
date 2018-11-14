<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<script src="build/react.js"></script>
<script src="build/JSXTransformer.js"></script>
<script type="text/javascript">
	function check() {

		var flag = 0;

		// 設定開始（必須にする項目を設定してください）

		if (document.loginform.name.value == "") { // 「お名前」の入力をチェック

			flag = 1;

		} else if (document.loginform.password.value == "") { // 「パスワード」の入力をチェック

			flag = 1;

		} else if (document.loginform.comment.value == "") { // 「コメント」の入力をチェック

			flag = 1;
		}
		// 設定終了

		if (flag) {

			window.alert('必須項目に未入力がありました'); // 入力漏れがあれば警告ダイアログを表示
			return false; // 送信を中止

		} else {

			return true; // 送信を実行

		}

	}
</script>
</head>
<body>
	<div id="example"></div>

	<form method="POST" action="all" name="loginform" onSubmit="return check()">

		<p>お名前：<br> <input type="text" name="name" size="30">
			（必須）</p>
		<p>パスワード：<br> <input type="password" name="password" size="30">
			（必須）</p>
		<p>コメント：<br>
			<textarea name="comment" rows="5" cols="30"></textarea>
			（必須）</p>
		<p><input type="submit" value="送信"></p>
		<p>jjjkgjsklgjdlkgdfl</p>
		<p>minni:<input tpye="text"><br>
		<p>wawa:<input tpye="password"></p>
		<textarea rows="20" cols="10"></textarea>
		<input type="submit" value="送信">


		<p>学生成绩表</p>

		<p>姓名:<input tpye="text"></p>

		<p>班级:<input tpye="password"></p>

		<p><input type="submit" value="初中"> <input type="submit"
				value="高中"></p>

	<textarea rows="10" cols="30"></textarea>


<h1>hello!</h1>
<h2>hello!!</h2>
<h3>hello!!!</h3>


<a href="http://www.youtube.com/">Youtube</a>


		<p>蓝莓礼包仓库</p>

		<p>苹果:<input tpye="text"></p>

		<p>香蕉:<input tpye="password"></p>

		<p>葡萄:<input tpye="password"></p>

		<p>梨:<input tpye="password"></p>


		<p><input type="submit" value="小礼包"> <input type="submit"
				value="旺旺大礼盒"></p>

<input type="checkbox">苹果
<input type="checkbox">香蕉
<input type="checkbox">葡萄
<input type="checkbox">梨<br>


<input type="radio"name="sports" value="0">男
<input type="radio"name="sports" value="1">女<br>



<select>
<option value="0">美国</option><br>
<option value="1">日本</option>
<option value="2">中国</option>
<option value="3">越南</option>
</select>


	<p>	<textarea rows="10" cols="30"></textarea></p>

		<br> <input type="submit" value="微信支付"> <input
			type="submit" value="支付宝支付"></br>



<p>库存水果
<ul>
<li>苹果</li>
<li>葡萄</li>
<li>香蕉</li>
</ul>
大卖水果
<ol>
<li>香蕉</li>
<li>苹果</li>
<li>葡萄</li>
</ol>
</p>





<table border="3"  align="center">

<tr>
<th>Neme</th>
<th>Japanese</th>
<th>Math</th>
<th>English</th>
</tr>
<tr>
<th>苹果</th>
<th>78</th>
<th>86</th>
<th>54</th>
</tr>
<tr>
<th>香蕉</th>
<th>54</th>
<th>67</th>
<th>67</th>
</tr>
</table>





	</form>

</body>
</html>