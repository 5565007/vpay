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
				<ul>
					<li>满100送10元</li>
					<li>满200送30元</li>
					<li>满300送50元</li>
					<li>满500送100元</li>
					<li>满1000送300元</li>
				</ul>
			</div>
			<div class="content">
					<form action="/getqr" method="post" id="qr">
						<div class="frm_control_group">
							<label class="frm_label">玩家帐号：</label>
							<div class="frm_controls">
								<input type="text" name="name" class="frm_input email" maxlength="32"/>
								<p class="frm_tips">必须与游戏账号一致</p>
							</div>
            </div>
						<div class="frm_control_group">
							<label class="frm_label">确认玩家帐号：</label>
							<div class="frm_controls">
								<input type="text" name="repname" class="frm_input passwd"/>
							</div>
						</div>
						<div class="frm_control_group">
							<label class="frm_label">您的手机号：</label>
							<div class="frm_controls">
								<input type="text" name="tel" class="frm_input passwd2"/>
							</div>
						</div>
						<div class="frm_control_group">
								<label class="frm_label">QQ：</label>
								<div class="frm_controls">
									<input type="text" name="qq" class="frm_input passwd2"/>
								</div>
						</div>
						<div class="frm_control_group">
								<label class="frm_label">充值金额:</label>
								<div class="frm_controls">
									<input type="text" name="money" class="frm_input passwd2"/>
								</div>
						</div>
						<!-- <div class="toolBar">
							<a id="nextBtn" class="btn btn_primary" href="javascript:;">下一步</a>
						</div> -->
						<button type="submit" class="btn btn_primary">下一步</button>
					</form>

			</div>
		</div><!-- // container end -->
		<footer id="footer" class="w960 oh">
			<span class="fl">适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</span>
		</footer><!-- // footer end -->
	</div><!-- // wrapper end -->
	
</body>
</html>