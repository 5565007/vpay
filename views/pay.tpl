<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>{{.Website}}</title>
	<link rel="stylesheet" href="static/css/base.css" />
	<link rel="stylesheet" href="static/css/layout.css"/>
</head>
<body>
	<div id="wrapper">
		<header id="header">
			<div id="loginBar">
				<div class="w960 tr">
					<a href="#">登录</a> <span class="sp">|</span> <a href="#">注册</a>
				</div>
			</div>
			<div id="headBox">
				<div class="w960 oh">
					<span class="logo fl mt10"></span>
					<div class="logo-title">服务器名称：大象传奇 兑换比例：1元人民币兑换10000元宝</div>
					<nav id="navs" class="fr">
						<a class="active" href="#">常见问题</a>
					</nav>
				</div>
			</div>
		</header><!-- // header end -->
		<div class="container w960 mt20">
			<div id="processor" >
				<div>激励赠送说明:单次充值达到一定数额，可获得相应赠送金额的游戏币</div>
			</div>
			<div class="content">
          
        		<img src="data:image/png;base64,{{.Qrcode}}" />

			</div>
		</div><!-- // container end -->
		<footer id="footer" class="w960 oh">
			<span class="fl">适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</span>
		</footer><!-- // footer end -->
	</div><!-- // wrapper end -->
	
</body>
</html>

