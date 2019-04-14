<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<section class="content">
    <br><br>


    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8">


                <!-- POST -->
                <div class="post">
                    <form action="#" class="form newtopic" method="post">
                        <div class="topwrap">
                            <div class="userinfo pull-left">
                                <div class="avatar">
                                    <img src="${pageContext.request.contextPath}/resources/images/avatar4.jpg" alt=""/>
                                </div>
                            </div>
                            <div class="posttext pull-left">

                                <div>
                                    <input type="text" name="title" id="idTopicTitle" placeholder="Enter Topic Title"
                                           class="form-control"/>
                                </div>


                                <div>
                                    <textarea name="description" id="desc" placeholder="Description"
                                              class="form-control"></textarea>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="postinfobot">

                            <div class="pull-right postreply">
                                <div class="pull-left">
                                    <button type="submit" class="btn btn-primary">Post</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>


                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
                <!-- POST -->

                <div class="row similarposts">
                    <div class="col-lg-10"><i class="fa fa-info-circle"></i>
                        <p>Similar Posts according to your Topic Title.</p>
                    </div>
                </div>
                <div id="idSmilarTopic">
                </div>


            </div>
            <div class="col-lg-4 col-md-4">

                <!-- -->
                <div id="idPopularTopic" class="sidebarblock">
                </div>
                <c:import url="${pageContext.request.contextPath}/WEB-INF/fragments/activeThreads.jsp"></c:import>


            </div>
        </div>
    </div>

</section>
