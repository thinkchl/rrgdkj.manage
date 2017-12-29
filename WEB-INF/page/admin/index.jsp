<%@page import="com.sun.org.apache.xml.internal.serialize.Printer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="shortcut icon" type="image/ico" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <style>
      iframe{
        min-width: 1000px;
      }
    </style>
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="${pageContext.request.contextPath }/images/header.png" class=" rotate-hover" height="50" alt="" />后台管理中心</h1>
  </div>
  <div class="head-l">
  <a class="button button-little bg-green" href="" onclick="alert('功能正在建设中，请耐心等待哦！！！')"><span class="icon-home"></span> 前台首页</a> 
   &nbsp;&nbsp;<a class="button button-little bg-red" href="${pageContext.request.contextPath }/quit.do"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
 
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul style="display: block">
    <li><a href="/api/showList.do?tb=ComponentsCompany" class="on" target="right" name="ComponentsCompany"><span class="icon-caret-right"></span>组件商</a></li>
    <li><a href="/api/showList.do?tb=WorkUnit" target="right" name="WorkUnit"><span class="icon-caret-right"></span>施工队</a></li>
    <li><a href="/api/showList.do?tb=SucceedCasus" target="right" name="SucceedCasus"><span class="icon-caret-right"></span>成功案例</a></li>
    <li><a href="/api/showList.do?tb=News" target="right" name="News"><span class="icon-caret-right"></span>新闻管理</a></li>
    <li><a href="echarts.htm" target="right"><span class="icon-caret-right"></span>图标展示</a></li>
  </ul>  
</div>


<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="/api/showList.do?tb=ComponentsCompany" name="right" width="100%" height="100%"></iframe>
</div>
 <script type="text/javascript">
    $(function(){
      $(".leftnav h2").click(function(){
        $(this).next().slideToggle(200);   
        $(this).toggleClass("on"); 
      });
      $(".leftnav ul li a").click(function(){
          $("#a_leader_txt").text($(this).text());
          $(".leftnav ul li a").removeClass("on");
          $(this).addClass("on");
      })
    });
  </script>
</body>
</html>