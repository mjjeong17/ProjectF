<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%  request.setCharacterEncoding("UTF-8"); 
	
	ArrayList<String> Movielist = (ArrayList) session.getAttribute("GoodList");
	
	String productName= request.getParameter("mv_title");


	if (session.getAttribute("GoodList") == null) {
		Movielist = new ArrayList<String>();
    }
	Movielist.add(productName);
    session.setAttribute("GoodList", Movielist);

    response.sendRedirect("GoodsList.jsp");
%>