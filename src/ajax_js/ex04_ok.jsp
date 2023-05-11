<%@ page contentType="text/xml; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces = "true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String content = request.getParameter("content");
%>
<!-- (XML은 한개의 root 태그가 필요. 여기서는 guest. 자식들이 들어올 수 있음. 대소문자 명확히 구분. 
		열고 닫는 태그의 대소문자 정확히 기재. ) 
	 (CDATA안에 들어가있는건 모두 문자열.)-->
<guest>
	<dataCount>5</dataCount>
	<%for(int n=1; n<=5; n++) { %>
		<record num ="<%=n%>">
			<name><%= (char)(n+64)+"-"+name%></name>
			<content><![CDATA[<%=(char)(n+64)+"-"+content%>]]></content>
		</record>
	<%} %>
</guest>
