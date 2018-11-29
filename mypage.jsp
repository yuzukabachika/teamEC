<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<link rel="stylesheet" href="./css/mypage.css">
<title>マイページ</title>
</head>
<body>
<s:include value="header.jsp"/>
<div class="contents">
<div class="title">会員登録情報</div>
	<s:form action="PurchaseHistoryAction">
	<table class="vertical-list-table">
	<tr>
		<th scope="row"><s:label value="姓"/></th>
		<td><s:property value="userInfoDTO.familyName"/></td>
	</tr>
	<tr>
		<th scope="row"><s:label value="名"/></th>
		<td><s:property value="userInfoDTO.firstName"/></td>
	</tr>
	<tr>
		<th scope="row"><s:label value="ふりがな" /></th>
		<td><s:property value="userInfoDTO.familyNameKana"/><span>　</span><s:property value="userInfoDTO.firstNameKana"/></td>
	</tr>
	<tr>
		<th scope="row"><s:label value="性別"/></th>
		<td><s:if test="userInfoDTO.sex==0">男性</s:if><s:if test="userInfoDTO.sex==1">女性</s:if></td>
	</tr>
	<tr>
		<th scope="row"><s:label value="メールアドレス"/></th>
		<td><s:property value="userInfoDTO.email"/></td>
	</tr>
	</table>
	<div class="submit_btn_box">
	<s:submit value="購入履歴" class="btn_blue"/>
	</div>
	</s:form>
</div>
	<s:include value="footer.jsp"/>
</body>
</html>