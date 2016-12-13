<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Users List</title>
</head>
<body>

<h2>Hello World again 5</h2>

    <div align="center">
        <table border="1" style="width:60%">
            <caption>List of user</caption>
            <tr>
                <th>Name</th>
                <th>Email</th>
            </tr>
            <sql:query var="resultSet" dataSource="jdbc/soba">
            	select * from newusers;
            </sql:query>

            <c:forEach var="row" items="${resultSet.rows}">
                <tr>
                    <td><c:out value="${row.username}" /></td>
                    <td><c:out value="${row.email}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>