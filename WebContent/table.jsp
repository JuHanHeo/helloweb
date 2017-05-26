<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
	String row = request.getParameter("r");	//request는 내장객체
	if(row==null || row.matches("-?\\d+(\\.\\d+)?")==false){	//방어 코드가 필요함 (방어코드 예시)
		row="0";
	}
	int nRow = Integer.parseInt(row);
	
	String col = request.getParameter("c");	//request는 내장객체
	if(col==null || col.matches("-?\\d+(\\.\\d+)?")==false){	//방어 코드가 필요함 (방어코드 예시)
		col="0";
	}
	int nCol = Integer.parseInt(col);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" cellpadding="10px">
		<%
			for(int i=1;i<=nRow;i++){
		%>
		<tr>
			<% 
			for(int j=1;j<=nCol;j++){
			%>
			<td><%=i %>, <%=j %></td>	
			<% 
			}
			%>
		</tr>
		<%
		}
		 %>
	</table>

</body>
</html>