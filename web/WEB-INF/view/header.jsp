<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Vuqar
  Date: 10/20/2018
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Forum :: Home Page</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom -->
    <link href="${pageContext.request.contextPath}/resources/css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/font-awesome-4.0.3/css/font-awesome.min.css">

    <!-- CSS STYLE-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" media="screen" />

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/rs-plugin/css/settings.css" media="screen" />

    <script
            src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>


    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script type="text/javascript">

        $(function() {
            getPopularTopic();
            $('#idTopicTitle').blur(function () {
                showSmilarTopic();
            });
        });

        function getPopularTopic() {
            $.ajax({
                url: '/ts?action=getPopularTopic',
                type: 'GET',
                dataType: 'html',
                success: function (data) {
                    $('#idPopularTopic').html(data);
                }
            });
        }

        function showSmilarTopic() {
            var topicValue = $('#idTopicTitle').val();
            if (topicValue == ""){

            } else {
                $.ajax({
                    url: '/ts?action=smilarTopic',
                    type: 'GET',
                    data: $('form').serialize(),
                    dataType: 'html',
                    beforeSend: function () {
                        $('#idSmilarTopic').html('<center><img src="../../resources/images/load.gif" height="100" width="100"></center>');
                    },
                    success: function (data) {
                        $('#idSmilarTopic').html(data)
                    }

                })
            }
        }


    </script>

</head>
<body>

<div class="container-fluid">

    <div class="headernav">
        <div class="container">
            <div class="row">
                <div class="col-lg-1 col-xs-3 col-sm-2 col-md-2 logo "><a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt=""  /></a></div>
                <div class="col-lg-3 col-xs-9 col-sm-5 col-md-3 selecttopic">

                </div>
                <div class="col-lg-4 search hidden-xs hidden-sm col-md-3">
                    <div class="wrap">
                        <form action="#" method="post" class="form">
                            <div class="pull-left txt"><input type="text" class="form-control" placeholder="Search Topics"></div>
                            <div class="pull-right"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></div>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12 col-sm-5 col-md-4 avt">
                    <c:choose>
                        <c:when test="${sessionScope.user eq null}">
                            <div class="pull-right">
                                <%--<form action="/ns?action=login" class="form">--%>
                                    <%--<input type="hidden"  >--%>
                                    <%--<input type="submit" class="btn btn-primary" value="Login">--%>
                                <%--</form>--%>
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/ns?action=login">Login</a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="pull-left">
                                <%--<form action="/ns?action=login" class="form">--%>
                                    <%--<input type="submit" class="btn btn-primary" value="Create new topic">--%>
                                <%--</form>--%>
                                    <a class="btn btn-primary" style="margin-right: 100px" href="${pageContext.request.contextPath}/ns?action=createNewTopic">Create new topic</a>
                            </div>
                            <div class="avatar pull-left dropdown">
                                <a data-toggle="dropdown" href="#"><img src="${pageContext.request.contextPath}/resources/images/${sessionScope.user.image}" width="32"  height="32" alt="" /></a> <b class="caret"></b>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-3" href="#">Log Out</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-4" href="04_new_account.html">Create account</a></li>
                                </ul>
                            </div>
                        </c:otherwise>
                    </c:choose>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>