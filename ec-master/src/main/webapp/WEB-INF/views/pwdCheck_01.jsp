<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String id = (String) session.getAttribute("id"); //JSP는 session이 내장 객체라 바로 사용 가능하다.
MemberVO vo = new MemeberVO();
String user_pwd = vo.getUser_pwd(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board list JSP</title>
<script type="text/javascript">
function fnModify(id, user_pwd) {
	//alert("id : " + id);
	var pw = prompt("비밀번호를 입력하세요","");
	//alert("member_pw : " + member_pw + "\npw : " + pw);
	//member_pw : dto에 저장되어있던 비밀번호
	//pw : 방금 사용자로부터 입력받은 비밀번호
	if(user_pwd == pw) { //맞는 비밀번호를 입력하면 URL이 바뀐다
		//alert("비밀번호 일치합니다.")
		location.href = "memberDetailAction.me?member_id=" + id;
	} else {
		alert("비밀번호가 일치하지 않습니다.");
	}
}
</script>
</head>
<body>
<div align="center">
	<h3>비밀번호 확인</h3>
	<table>
		<tr align="right">
			<td>
				<%if(id != null && id.equals("admin")) { %>
					<input type="button" value="회원 관리" onclick="location.href='memberListAction.me'" />
				<%} %>
				<!-- <input type="button" value="로그아웃" onclick="location.href='memberLogout.me'"/> -->
				<input type="button" value="글쓰기" onclick="location.href='boardWrite.bo'" />
				<input type="button" value="회원 정보 수정" onclick="fnModify('<%=id%>', '<%=user_pwd %>')"/>
			</td>
		</tr>
	</table>
</div>
</body>
</html>
 --%>