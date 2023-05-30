<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>tasklist</h2>
        <ul>
            <c:forEach var="task" items="${tasks}">
            <%--itemsに繰り返したいデータを指定する、だからtasks（データベースに保存されているタスクのデータ）を入れる
              varは繰り返し中のデータが入る変数名である、だからtaskにする --%>

                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}"> <%--taskの中には繰り返し中のデータが入っている --%>
                        <c:out value="${task.id}" />  <%--taskの中には繰り返し中のデータが入っている --%>
                    </a>
                     ：<c:out value="${task.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規taskの投稿</a></p>

    </c:param>
</c:import>