<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");
	if(type==null) return;
%>

<br>
<table width="100%" border="1">
<tr>
	<th>타입</th> <td><b><%=type %></b></td>
</tr>

<tr>
	<th>특징</th> 
	<td>
		<strong>
	<%if(type.equals("A")){ %>		
		강한 내구성
	<%}else if(type.equals("B")){%>
		뛰어난 대처 능력
	<%} %>
		</strong>
	</td>
</tr>
</table>