<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" enctype='multipart/form-data'>
      <div class="form-group">
        <div class="label">
          <label>公司名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="companyname" data-validate="required:请输入公司名" autocomplete="off"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>公司logo：</label>
        </div>
        <div class="field">
          <input type="file" id="url1"  name="img" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" multiple/>

        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>公司地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="addr" data-validate="required:请输入地址" autocomplete="off"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>公司电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="phone" data-validate="required:请输入电话" autocomplete="off"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>公司邮箱：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="email" data-validate="required:请输入邮箱" autocomplete="off"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" id="submit"> 提交</button>
          <span style="color:green;"></span>
        </div>
      </div>
    </form>
  </div>
</div>
  <script>
    $(function(){
      var tb = $(".on",parent.document).attr("name");
      $("form:eq(0)").attr("action","/api/add.do?tb="+tb);
    })
    submit.onclick=function(){
      // $("form").submit();
      // $.ajax({
      //   url:"/api/add.do?tb="+tb,
      //   dataType:"json",
      //   success:(data)=>{
      //     console.log(data);
      //   }
      // })
    }

  </script>
</body></html>