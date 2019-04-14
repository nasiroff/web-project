<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- POST -->
<c:choose>
    <c:when test="${requestScope.blogList.size() ne 0}">
        <c:forEach items="${requestScope.blogList}" var="blog">
            <div class="post">
                <div class="wrap-ut pull-left">
                    <div class="userinfo pull-left">
                        <div class="avatar">
                            <img src="${pageContext.request.contextPath}/resources/images/avatar.jpg" alt=""/>
                        </div>
                    </div>
                    <div class="posttext pull-left">
                        <h2><a href="/ts?action=getTopic&topic=${blog.id}">${blog.title}</a></h2>

                        <c:choose>
                            <c:when test="${blog.description.length() > 150}"><p>${blog.description.substring(0, 149)}
                                ...</p></c:when>
                            <c:otherwise><p>${blog.description}</p></c:otherwise>
                        </c:choose>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="postinfo pull-left">
                    <div class="comments">
                        <div class="commentbg">
                                ${blog.comments.size()}
                            <div class="mark"></div>
                        </div>
                    </div>
                    <div class="views"><i class="fa fa-eye"></i>${blog.viewCount}</div>
                    <div class="time"><i class="fa fa-clock-o"></i> ${blog.timeDiff}</div>
                </div>
                <div class="clearfix"></div>
            </div>
        </c:forEach>
        <!-- POST -->
    </c:when>
    <c:otherwise>
        <center><h1>You will create topic unsmilar</h1></center>
    </c:otherwise>
</c:choose>
