<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3 class="bg-primary">Popular Topics</h3>
<div class="divline"></div>
<div class="blocktxt">
    <ul class="cats">
        <c:forEach items="${blogList}" var="blog">
            <li><a href="/ts?action=getTopic&topic=${blog.id}" title="${blog.title}">${blog.title.substring(0, 40)} <span class="badge pull-right">${blog.commentCount}</span></a></li>
        </c:forEach>
    </ul>
</div>