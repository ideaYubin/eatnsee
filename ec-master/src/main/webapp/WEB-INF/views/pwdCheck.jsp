<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.xans-member_checkpassword { border:1px solid #d7d5d5; padding:30px 0; color:#2e2e2e; text-align:center; }
.xans-member_checkpassword .confirm { width:330px; margin:0 auto; }
.xans-member_checkpassword .confirm .info { margin:50px 0; line-height:150%; color:#757575;}
.xans-member_checkpassword .confirm .info strong { color:#008bcc; }
.xans-member_checkpassword .confirm .password label { display:inline-block; margin:0 0 5px; padding:0 0 0 10px; width:80px; font-weight:normal; background:url("${contextPath }/image/check_02.png") no-repeat 15px 4px;}
.xans-member_checkpassword .confirm .password input { width:175px; height:18px; margin:0 13px 0 0; padding:2px 2px 2px 3px; border:1px solid #d9d9d9; color:#202020; }
.xans-member_checkpassword .confirm .button { margin:40px 0 10px; }
</style>
<title>Insert title here</title>
</head>
<body>
<div module="member_checkpassword">
    <!--@css(/css/module/member/checkpassword.css)-->
    {$enc_password}
    <h3><img src="${contextPath }/image/check.png" alt="비밀번호 확인" /></h3>
    <div class="confirm">
        <fieldset>
            <legend>비밀번호 확인</legend>
            <p class="info"><strong>{$user_name}</strong> 님의 회원정보를 안전하게 보호하기 위해<br />비밀번호를 한번 더 확인해 주세요.</p>
            <p class="password"><label for="cp_password">비밀번호</label>{$form.cp_password}</p>
            <p class="button">
                <a href="#none" onclick="{$check_password_action}"><img src="${contextPath }/image/check_01.png" alt="확인" /></a>
            </p>
        </fieldset>
    </div>
</div>
</body>
</html>