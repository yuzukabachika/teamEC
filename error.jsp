<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3;URL='HomeAction'"/>
<title>Insert title here</title>
</head>
<body>
<s:include value="header.jsp"/>
<div class="error">
エラーが発生しました。ホーム画面へ自動的に戻ります。
</div>
<s:include value="footer.jsp"/>
</body>
</html>