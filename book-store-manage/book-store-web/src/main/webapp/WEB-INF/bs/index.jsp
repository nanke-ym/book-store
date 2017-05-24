<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/bs/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<title>书林网购书系统</title>
	<jsp:include page="${bsw}/WEB-INF/bs/include/css.jsp"/>
	<jsp:include page="${bsw}/WEB-INF/bs/include/javascript.jsp"/>
	<style type="text/css">
		.navbar-nav>li>a {
			padding-top:8px;
			padding-bottom: 8px;
		}

		.navbar {
			min-height: 36px;
		}
		.navbar-toggle {
			margin-top: 4px;
			margin-bottom: 4px;
		}
		.dropdown-submenu {
			position: relative;
		}
		.dropdown-submenu > .dropdown-menu {
			top: 0;
			left: 100%;
			margin-top: -6px;
			margin-left: -1px;
			-webkit-border-radius: 0 6px 6px 6px;
			-moz-border-radius: 0 6px 6px;
			border-radius: 0 6px 6px 6px;
		}
		.dropdown-submenu:hover > .dropdown-menu {
			display: block;
		}
		.dropdown-submenu > a:after {
			display: block;
			content: " ";
			float: right;
			width: 0;
			height: 0;
			border-color: transparent;
			border-style: solid;
			border-width: 5px 0 5px 5px;
			border-left-color: #ccc;
			margin-top: 5px;
			margin-right: -10px;
		}
		.dropdown-submenu:hover > a:after {
			border-left-color: #fff;
		}
		.dropdown-submenu.pull-left {
			float: none;
		}
		.dropdown-submenu.pull-left > .dropdown-menu {
			left: -100%;
			margin-left: 10px;
			-webkit-border-radius: 6px 0 6px 6px;
			-moz-border-radius: 6px 0 6px 6px;
			border-radius: 6px 0 6px 6px;
		}
		.logo .center {
			position: absolute;
			top: 17%;
			right: 30%;
			width: 50%;
			height: 30%;
			text-align: center;
			line-height: 70px;
			font-size: 30px;

		}
		.input-group {
			margin-top: 25px;
		}
		.col {
			padding: 5px;
		}
		.list {
			position: absolute;
			top: 32%;
			left: 20%;
			width: 50%;
			height: 30%;
		}
		.list .more {
			background: #a064b4;
			font-size:20px;
			text-align:center;
		}
		.list a {
			color:#a064b4;
			font-weight:800;
		}

		.daohang {
			border-bottom:2px solid #5050ff;
		}
	</style>
</head>
<body>

	<nav class="navbar navbar-default navbar-static-top"  role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>

		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">

			<ul class="nav navbar-nav navbar-right" >
				<c:choose>
					<c:when test="${not empty user}">
						<li><a href="#">${user.userName}</a></li>
						<li><a href="${bsw}/bs/cart/myCart">我的购物车</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${bsw}/bs/loginUI">登录</a></li>
						<li><a href="#">注册</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>

<div class="find">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col">
				<div class="logo">
					<img src="/static/img/8.jpg" class="img-rounded" style="width:330px;height:90px" >
					<div class="center center-block">书林网</div>
				</div>
			</div>
			<div class="col-md-6 col">
				<div class="input-group">
					<input type="text" class="form-control input-lg" placeholder="请输入书名">
					<a class="input-group-addon btn btn-primary" style="background:#3c78b4;color:#fff">搜索</a>
				</div>  
			</div>

			<%--<div class="col-md-2 col">
				<a href="#" class="btn btn-default btn-lg" role="button" style="background:#a0b4dc;color:#eee;margin:25px 140px;">购物车</a>
			</div>--%>
		</div>
	</div>
</div>

<div class="daohang">
	<div class="container">
		<ul class="nav nav-pills nav-justified">
			<li class="active"><a href="#">首页</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					商品分类<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li class="dropdown-submenu"><a href="#">小说</a>
						<ul class="dropdown-menu pull-right">  
							<li><a href="#">中国当代小说</a></li>  
							<li><a href="#">中国古典小说</a></li>  
							<li><a href="#">四大名著</a></li>  
						</ul>  
					</li>  
					<li><a href="#">文艺</a></li>
					<li><a href="#">青春</a></li>
					<li><a href="#">励志</a></li>
					<li><a href="#">童书</a></li>
					<li><a href="#">生活</a></li>
					<li><a href="#">科技</a></li>
					<li><a href="#">人文社科</a></li>
					<li><a href="#">经管</a></li>
					<li><a href="#">教育</a></li>
					<li class="divider"></li>
					<li><a href="#">分离的链接</a></li>
				</ul>
			</li>
			<li><a href="#">购物</a></li>
			<li><a href="#">购物车</a></li>
			<li><a href="#">结算</a></li>
			<li><a href="#">联系</a></li>
			<li><a href="#">关于</a></li>
		</ul>
		</div>
	</div>

	<%--<div class="list">
		<img src="image/1.jpg" style="height:600px">
	</div>--%>
	<div class="book" >
      	<div class="container">
      		<div class="row">
      			<div class="col-md-12" >
					<c:forEach items="${books}" var="book">
						<div class="col-md-3">
							<div class="media">
								<div class="media-center media-top">
									<a href="#"><img class="media-object center-block" src="${book.imgUrl}" style="width:200px;height:260px"/></a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">${book.bookName}</h4>
									<p class="media-heading">${book.bookAuthor}</p>
									<p class="media-heading">${book.bookPrice}</p>
								</div>
								<div class="">
									<button type="submit" class="btn btn-primary">加入购物车</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
</script>
</html>