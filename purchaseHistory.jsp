<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/purchaseHistory.css"/>
<title>商品購入履歴</title>
</head>
<body>
<s:include value="header.jsp"/>
	<div class="contents">
		<div class="title">購入履歴</div>
	<s:if test="purchaseHistoryInfoDtoList==null">
	<div class="info">
	商品購入履歴情報はありません
	</div>
	</s:if>
	<s:else>
	<div class="submit_btn_box">
	<div id=".content-btn-set">
	<s:form action="DeletePurchaseHistoryAction">
		<s:submit value="履歴を全削除" class="btn_red"/>
	</s:form>
	</div>
	</div>
	<s:iterator value="purchaseHistoryInfoDtoList">
		<div class="purchasehistory_contents">
			<div class="left_contents">
			<img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>'/>
			</div>
			<div class="right_contents">
				<table>
				<tr>
				<th></th>
				<td><s:property value="productNameKana"/></td>
				</tr>
				<tr>
					<th><s:label value="商品名"/></th>
					<td><s:property value="productName"/></td>
				</tr>
				<tr>
					<th><s:label value="値段"/></th>
					<td><s:property value="price"/></td>
				<tr>
				<tr>
				<th><s:label value="発売会社"/></th>
					<td><s:property value="releaseCompany"/></td>
				</tr>
				<tr>
					<th><s:label value="発売年月日"/></th>
				<td><s:property value="releaseDate"/></td>
				</tr>
			</table>
			</div>
		</div>
	</s:iterator>
	</s:else>
	</div>
<s:include value="footer.jsp"/>
</body>
</html>