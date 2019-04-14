<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section class="content">

    <div class="container">
        <h1>All Topics</h1>
        <div class="row">
            <div class="col-lg-8 col-md-8">
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
                                    <c:when test="${blog.description.length() > 150}"><p>${blog.description.substring(0, 149)} ...</p></c:when>
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
                <center>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <c:set var = "page" value = "${1}"/>
                            <c:forEach begin="1" end="${count-1}"  var="pageCount">
                                <c:choose>
                                    <c:when test="${(requestScope.page != pageCount)}">

                                        <li class="page-item"><a class="page-link" href="/ts?action=olderTopics&page=${pageCount}"><c:out value="${pageCount}"/></a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><span class="page-link"><c:out value="${pageCount}"/></span></li>
                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>
                </center>
            </div>
            <div class="col-lg-4 col-md-4">

                <!-- -->
                <div id="idPopularTopic" class="sidebarblock">
                </div>

                <c:import url="${pageContext.request.contextPath}/WEB-INF/fragments/activeThreads.jsp"></c:import>

            </div>
        </div>
    </div>

    <br><br>

</section>
