<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="incReservation.jsp" %>
<%@ include file="incLogin.jsp" %>
<script>


</script>

<div class="row">
<%
String sql = "SELECT * FROM movies order by mv_code";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
if(rs.next()){
	do{
		String mv_code = rs.getString("mv_code");
		String mv_title = rs.getString("mv_title");
		String mv_open = rs.getString("mv_open").substring(0,10);
		String mv_close = rs.getString("mv_close").substring(0,10);
		int mv_price = rs.getInt("mv_price");
		String sc_code = rs.getString("sc_code");
%>
<div class="col-md-3">
<div class="form_wrap ">
<form action="Reservation_proc.jsp" method="get" name="ResFrm" id="ResFrm">
<h4 class="text-primary" ><%=mv_title %> </h4>
<p>영화코드 : <%=mv_code %></p> 
<input type="date" value="<%=mv_open%>" name="tk_date" id="chkDate"/><br/>
	<select name="tk_cnt">
			<option value="1">1 매</option>
			<option value="2">2 매</option>
			<option value="3">3 매</option>
			<option value="4">4 매</option>
			<option value="5">5 매</option>
			<option value="6">6 매</option>
	</select><br/>
	<p><br/>티켓가격 : <%=mv_price %> <br/>극장코드 : <%=sc_code %></p>
	<input type="hidden" value="<%=mv_code%>" name="mv_code"/>
	<input type="hidden" value="<%=sc_code%>" name="sc_code"/>
	<input type="hidden" value="<%=mv_price%>" name="tk_price"/>
	<input type="submit" class="btn btn-success btn-block" value="바로예약" />
</form>
<br/>
<form action="GoodAdd.jsp" method="post">
	<input type="hidden" value="<%=mv_title%>" name="mv_title"/>
	<input type="submit" value="관심영화" class="btn btn-info  btn-block" />
</form>
</div>
</div>
<%
		} while(rs.next());
	}else{
		out.println("조회실패");
	}
	try{
		pstmt.close();
		rs.close();
		conn.close();
	} catch(Exception e){
		e.printStackTrace();
		out.println("오류 메세지 : " + e.getMessage());
	}
%>	
</div>
<%@ include file="incFooter.jsp" %>