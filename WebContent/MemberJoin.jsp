<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="incHeader.jsp" %>
<h4 class="text-danger text-center"> 회원 가입 </h4>
<form action="MemberJoin_proc.jsp" method="post" class="text-center" name="JoinFrm">
<script>


</script>
<table class="table table-hover table-striped">
	<tr>
		<th class="text-center">아이디</th>
		<td>
			<input type="text" name="userid" class="form-control"/>
			<input type="button" value="ID중복확인" name="chkID" onclick="idChek()" class="btn btn-primary btn-block" />
			<input type="hidden" name="isUnique" value="n"/>
		</td>
	</tr>	
	<tr>
		<th class="text-center">비밀번호</th>
		<td>
			<input type="password" name="userpwd" class="form-control"/>
		</td>
	</tr>	
	<tr>
		<th class="text-center">이 름</th>
		<td>
			<input type="text" name="username" class="form-control"/>
		</td>
	</tr>	
	<tr>
		<th class="text-center">휴대폰 번호 </th>
		<td>
			<input type="text" name="phone" class="form-control"/>
		</td>
	</tr>	
	<tr>
		<th colspan="2" class="text-center">
			<input type="submit" value="회 원 가 입" class="btn btn-success"/>
		</th> 
	</tr>
</table>
</form>
<%@ include file="incFooter.jsp" %>