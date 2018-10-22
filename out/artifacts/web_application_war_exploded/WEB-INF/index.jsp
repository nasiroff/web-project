<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${pages}" var="page">
    <c:import url="${pageContext.request.contextPath}/WEB-INF/view/${page}"></c:import>
</c:forEach>
