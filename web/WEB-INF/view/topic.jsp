<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<section class="content">
    <br><br>


    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8">

                <!-- MAIN POST -->
                <div class="post beforepagination panel-primary">
                    <div class="topwrap">
                        <div class="userinfo pull-left">
                            <div class="avatar">
                                <img src="${pageContext.request.contextPath}/resources/images/avatar.jpg" alt=""/>
                            </div>

                        </div>
                        <div class="posttext pull-left">
                            <h2>${blog.title}</h2>
                            <p>${blog.description}</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="postinfobot">

                        <div class="posted pull-left"><i class="fa fa-clock-o"></i>${blog.shareDate}</div>
                        <div class="posted pull-left">${blog.user.username}</div>
                        <c:if test="${sessionScope.user.role.id eq 1}">
                            <div class="posted pull-left"><i class="fa fa-trash-o"></i></div>
                        </c:if>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- MAIN POST -->


                <c:forEach items="${requestScope.comments}" var="comment">
                    <!-- COMMENT -->
                    <div class="post">
                        <div class="topwrap">
                            <div class="userinfo pull-left">
                                <div class="avatar">
                                    <img src="${pageContext.request.contextPath}/resources/images/avatar2.jpg" alt=""/>
                                </div>

                            </div>
                            <div class="posttext pull-left">
                                <p>${comment.message}</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="postinfobot">

                            <div class="posted pull-left"><i class="fa fa-clock-o"></i> ${comment.addingDate}
                            </div>
                            <div class="posted pull-left">${comment.user.username}</div>
                            <c:if test="${sessionScope.user.role.id eq 1}">
                                <div class="posted pull-left"><i class="fa fa-trash-o"></i></div>
                            </c:if>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!-- COMMENT -->
                </c:forEach>


                <br><br>


                <!-- REPLY -->
                <C:if test="${sessionScope.user ne null}">
                    <div class="post">
                        <form action="/ts" class="form" method="post">
                            <div class="topwrap">
                                <div class="userinfo pull-left">
                                    <div class="avatar">
                                        <img src="${pageContext.request.contextPath}/resources/images/avatar4.jpg"
                                             alt=""/>
                                    </div>

                                </div>
                                <div class="posttext pull-left">
                                    <div class="textwraper">
                                        <div class="postreply">Post a Reply</div>
                                        <input type="hidden" name="action" value="newComment">
                                        <input type="hidden" name="idBlog" value="${blog.id}">
                                        <textarea name="reply" id="reply"
                                                  placeholder="Type your message here"></textarea>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="postinfobot">


                                <div class="pull-right postreply">
                                    <div class="pull-left">
                                        <input type="submit" class="btn btn-primary" value="Post Reply">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>


                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                </C:if>
                <!-- REPLY -->


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
