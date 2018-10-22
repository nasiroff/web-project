<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                        <c:if test="${sessionScope.user.idRole eq 1}">
                            <div class="posted pull-left"><i class="fa fa-trash-o"></i></div>
                        </c:if>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- MAIN POST -->


                <!-- COMMENT -->
                <div class="post">
                    <div class="topwrap">
                        <div class="userinfo pull-left">
                            <div class="avatar">
                                <img src="${pageContext.request.contextPath}/resources/images/avatar2.jpg" alt=""/>
                            </div>

                        </div>
                        <div class="posttext pull-left">
                            <p>Typography helps you engage your audience and establish a distinct, unique personality on
                                your website. Knowing how to use fonts to build character in your design is a powerful
                                skill, and exploring the history and use of typefaces, as well as typogra...</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="postinfobot">

                        <div class="posted pull-left"><i class="fa fa-clock-o"></i> Posted on : 20 Nov @ 9:45am</div>
                        <div class="posted pull-left"> John McRon</div>
                        <div class="posted pull-left"><i class="fa fa-trash-o"></i></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- COMMENT -->


                <!-- COMMENT -->
                <div class="post">
                    <div class="topwrap">
                        <div class="userinfo pull-left">
                            <div class="avatar">
                                <img src="${pageContext.request.contextPath}/resources/images/avatar2.jpg" alt=""/>
                            </div>

                        </div>
                        <div class="posttext pull-left">
                            <p>Typography helps you engage your audience and establish a distinct, unique personality on
                                your website. Knowing how to use fonts to build character in your design is a powerful
                                skill, and exploring the history and use of typefaces, as well as typogra...</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="postinfobot">

                        <div class="posted pull-left"><i class="fa fa-clock-o"></i> Posted on : 20 Nov @ 9:45am</div>
                        <div class="posted pull-left"> John McRon</div>
                        <div class="posted pull-left"><i class="fa fa-trash-o"></i></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- COMMENT -->

                <br><br>

                <!-- REPLY -->
                <div class="post">
                    <form action="#" class="form" method="post">
                        <div class="topwrap">
                            <div class="userinfo pull-left">
                                <div class="avatar">
                                    <img src="${pageContext.request.contextPath}/resources/images/avatar4.jpg" alt=""/>
                                </div>

                            </div>
                            <div class="posttext pull-left">
                                <div class="textwraper">
                                    <div class="postreply">Post a Reply</div>
                                    <textarea name="reply" id="reply" placeholder="Type your message here"></textarea>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="postinfobot">


                            <div class="pull-right postreply">
                                <div class="pull-left">
                                    <button type="submit" class="btn btn-primary">Post Reply</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>


                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
                <!-- REPLY -->


            </div>
            <div class="col-lg-4 col-md-4">

                <!-- -->
                <div class="sidebarblock">
                    <h3 class="bg-primary">Popular Topics</h3>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <ul class="cats">
                            <li><a href="#">Trading for Money <span class="badge pull-right">20</span></a></li>
                            <li><a href="#">Vault Keys Giveway <span class="badge pull-right">10</span></a></li>
                            <li><a href="#">Misc Guns Locations <span class="badge pull-right">50</span></a></li>
                            <li><a href="#">Looking for Players <span class="badge pull-right">36</span></a></li>
                            <li><a href="#">Stupid Bugs &amp; Solves <span class="badge pull-right">41</span></a></li>
                            <li><a href="#">Video &amp; Audio Drivers <span class="badge pull-right">11</span></a></li>
                            <li><a href="#">2K Official Forums <span class="badge pull-right">5</span></a></li>
                        </ul>
                    </div>
                </div>

                <!-- -->
                <div class="sidebarblock">
                    <h3 class="bg-primary">My Active Threads</h3>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <a href="#">This Dock Turns Your iPhone Into a Bedside Lamp</a>
                    </div>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <a href="#">Who Wins in the Battle for Power on the Internet?</a>
                    </div>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <a href="#">Sony QX10: A Funky, Overpriced Lens Camera for Your Smartphone</a>
                    </div>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <a href="#">FedEx Simplifies Shipping for Small Businesses</a>
                    </div>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <a href="#">Loud and Brave: Saudi Women Set to Protest Driving Ban</a>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <br><br>


</section>
