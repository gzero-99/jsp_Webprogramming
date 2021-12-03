<%@ page contentType="text/html; charset=utf-8" %>

<%! 
	int pageCount=0;

	void addCount(){
		pageCount++;
		//에서 계속 방문자 수가 실행되어 추가되어 저장됨.
	}
%>

<%
	addCount();
%>
<p>이 사이트 방문은 <%=pageCount %>번째 입니다.</p>