<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="incHeader.jsp" %>
<%
String chkID = request.getParameter("chkID");

String sql = "select userid from members where userid = ? "; 

pstmt = conn.prepareStatement(sql);
pstmt.setString(1, chkID);
rs = pstmt.executeQuery();

String msg = "이미 사용중인 아이디 입니다.<br /> 다른 아이디를 검색하세요.";
String dis = " disabled = 'disabled' ";

if (!rs.next()) {		
	msg = "사용 할 수 있는 아이디 입니다.";
	dis = " ";
}

%>

<style type="text/css">
#id_text { width:120px; }
body { font-size:11px; }
</style>
<script>



</script>
<div class="text-center">
<form name="frm_id" action="IdCheck.jsp" method="post" class="form-inline">
	<input type="text" id="userid" name="chkID" value="<%=chkID%>" class="form-control"/> 
	<input type="submit" value="검색" class="btn btn-info" />
</form>
<br /><%=msg %><br /><br />
	<input type="button" value="ID 적용" <%=dis %> onclick="idInput();" class="btn btn-mint"/>
	<input type="button" value="취 소" onclick="self.close();"  class="btn btn-danger"/>
</div>
<%@ include file="incFooter.jsp" %>