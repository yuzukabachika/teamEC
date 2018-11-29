<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="2;URL='GoLoginAction'"/>
<title>Insert title here</title>
</head>
<body>
<s:include value="header.jsp"/>
<div class="error">
ログインセッションがタイムアウトしました。再度ログインからやり直してください。<br>(自動的にログインページへ移動します)
<s:include value="footer.jsp"/>
</div>
</body>
</html>