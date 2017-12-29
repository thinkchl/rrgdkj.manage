<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆</title>
<link rel="shortcut icon" type="image/ico" href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<body  style="background:url('${pageContext.request.contextPath}/images/bg.jpg')no-repeat">
<div class="login-container" >
    <h1>江苏冉冉光电科技有限公司网站管理系统</h1>
    <form action="/api/login.do" method="post" id="loginForm">
        <div>
            <input type="text" name="username" class="username" placeholder="用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
        </div>
          <button id="submit" name="submit" type="submit"> 登 陆 </button> 
            <p class="error" style="color: red;font-size: .15rem;margin-top: 10px;">${loginErr }</p>

    </form>

<!--     <a href="register.htm">
        <button type="button" class="register-tis">还有没有账号？</button>
    </a> -->

</div>

</body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<!--表单验证-->
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script>
	//禁用浏览器回退按钮，因为回退访问的是缓存信息
　　$(function() {
　　if (window.history && window.history.pushState) {
　　$(window).on('popstate', function () {
　　window.history.pushState('forward', null, '');
　　window.history.forward(1);
　　});
　　}
　　window.history.pushState('forward', null, ''); //在IE中必须得有这两行
　　window.history.forward(1);
　　})
    function submit(){
        var username = $("input:eq(0)").val();
        var password = $("input:eq(1)").val();
        $.ajax({
            url:"/api/login.do",
            data:"username="+username+"&password="+password,
            dataType:"json",
            success:(data)=>{
            	console.log(data)
            }
        })
    }

</script>
</html>