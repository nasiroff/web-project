<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <section class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 breadcrumbf">
                            <p>Create New account</p>
                        </div>
                    </div>
                </div>


                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-8">



                            <!-- POST -->
                            <div class="post">
                                <form action="/us?action=doRegister" class="form newtopic" enctype="multipart/form-data" method="post">
                                    <div class="postinfotop">
                                        <h2>Create New Account</h2>
                                    </div>

                                    <!-- acc section -->
                                    <div class="accsection">
                                        <div class="acccap">
                                            <div class="userinfo pull-left">&nbsp;</div>
                                            <div class="posttext pull-left"><h3>Required Fields</h3></div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="topwrap">
                                            <div class="userinfo pull-left">
                                            </div>
                                            <div class="posttext pull-left">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <input type="text" name="firstName" placeholder="First Name" class="form-control" />
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <input type="text" name="lastName" placeholder="Last Name" class="form-control" />
                                                    </div>
                                                </div>
                                                <div>
                                                    <input type="text" name="userName" placeholder="User Name" class="form-control" />
                                                </div>
                                                <div>
                                                    <input type="text" name="email" placeholder="E-mail" class="form-control" />
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6">
                                                        <input type="password" name="pass" placeholder="Password"  class="form-control" id="pass"  />
                                                    </div>
                                                    <div class="col-lg-6 col-md-6">
                                                        <input type="password" name="rePass" placeholder="Retype Password" class="form-control" id="pass2" />
                                                    </div>
                                                </div>
                                                <div>
                                                    <input type="file" name="image" class="btn btn-primary" />
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>  
                                    </div>
                                    <!-- acc section END -->

                                    <div class="postinfobot">

                                        <div class="pull-right postreply">
                                            <div class="pull-left"><button type="submit" class="btn btn-primary">Sign Up</button></div>
                                            <div class="clearfix"></div>
                                        </div>


                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                            </div>
                            <!-- POST -->
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

