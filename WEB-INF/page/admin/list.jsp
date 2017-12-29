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
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath }/js/template-web.js"></script>
<script type="text/html" id="ComponentsCompany">
      {{each items item}}
        <tr>
        <td style="text-align:left; padding-left:20px;">
            <!-- <input type="checkbox" name="id[]" value="" /> -->
          {{item.id}}</td>
        <td>{{item.name}}</td>
        <td><img src="../../api/upload/{{item.logo}}" alt="" width="70" height="50" /></td>
         <td>{{item.addr}}</td>
         <td>{{item.email}}</td>
         <td>{{item.phone}}</td>
         <td>{{item.disabled=='false'?'否':'是'}}</td>
         <td>
             <div class="button-group">
                {{if item.disabled=='true'}}
                  <a class="button border-main update" href="javascript:void(0)" onclick="return changeStatus({{item.id}})">
                      <span class="icon-edit"></span> 发布信息</a>
                {{else}}
                  <a class="button border-red del" href="javascript:void(0)" onclick="return changeStatus({{item.id}})">
                       <span class="icon-trash-o"></span> 禁止发布</a>
                {{/if}}
             </div>
       </tr>
      {{/each}}
</script>
<script type="text/html" id="WorkUnit">
      {{each items item}}
        <tr>
        <td style="text-align:left; padding-left:20px;">
            <!-- <input type="checkbox" name="id[]" value="" /> -->
          {{item.id}}</td>
        <td>{{item.name}}</td>
         <td>{{item.addr}}</td>
         <td>{{item.email}}</td>
         <td>{{item.phone}}</td>
         <td>{{item.disabled=='false'?'否':'是'}}</td>
         <td>
             <div class="button-group">
                {{if item.disabled=='true'}}
                  <a class="button border-main update" href="javascript:void(0)" onclick="return changeStatus({{item.id}})">
                      <span class="icon-edit"></span> 发布信息</a>
                {{else}}
                  <a class="button border-red del" href="javascript:void(0)" onclick="return changeStatus({{item.id}})">
                       <span class="icon-trash-o"></span> 禁止发布</a>
                {{/if}}
             </div>
       </tr>
      {{/each}}
</script>
<script type="text/html" id="SucceedCasus">
      {{each items item}}
        <tr>
        <td style="text-align:left; padding-left:20px;">
            <!-- <input type="checkbox" name="id[]" value="" /> -->
          {{item.id}}</td>
         <td>{{item.addr}}</td>
         <td>{{item.photos}}</td>
         <td>{{item.componentsCompany.name}}</td>
         <td>{{item.workUnit.name}}</td>
         <td>{{item.startTime}}</td>
         <td>{{item.endTime}}</td>
         <td>{{item.predictMoney}}</td>
         <td>{{item.realityMoney}}</td>
         <td>{{item.funder.name}}</td>
         <td>{{item.disabled=='false'?'否':'是'}}</td>
         <td>
             <div class="button-group">
                {{if item.disabled=='true'}}
                  <a class="button border-main update" href="" onclick="return changeStatus({{item.id}})">
                      <span class="icon-edit"></span> 发布信息</a>
                {{else}}
                  <a class="button border-red del" href="" onclick="return changeStatus({{item.id}})">
                       <span class="icon-trash-o"></span> 禁止发布</a>
                {{/if}}
             </div>
       </tr>
      {{/each}}
</script>
<script type="text/html" id="page">
  {{each pages page}}
      {{if page.first==1}}
        {{if page.end==1}}
          {{if page.page>1}}
              <h>...</h>
          {{/if}}
          <span class="current">{{page.page}}</span>
        {{else}}
          {{if page.page>1}}
              <h>...</h>
          {{/if}}
          <a href="#" class="pageno" style="display: none;">{{page.page}}</a>
          <span class="current">{{page.page}}</span>
        {{/if}}
      {{else if (page.more==1&&page.end==1)}}
        <a href="#" class="pageno">{{page.page}}</a>
        <h>...</h>
      {{else}}
        <a href="#" class="pageno">{{page.page}}</a>
      {{/if}}
  {{/each}}

</script>
</head>
<body>

<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button add-btn border-main icon-plus-square-o" href="/showAdd.do"> 添加内容</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <thead class="ComponentsCompany" style="display: none;">
        <tr>
          <th style="text-align:left; padding-left:20px;">ID</th>
          <th>公司名</th>
          <th>公司logo</th>
          <th>公司地址</th>
          <th>公司邮箱</th>
          <th>公司电话</th>
          <th>禁</th>
          <th>操作</th>
        </tr>
      </thead>
      <thead class="WorkUnit" style="display: none;">
        <tr>
          <th style="text-align:left; padding-left:20px;">ID</th>
          <th>施工队名</th>
          <th>施工队地址</th>
          <th>施工队邮箱</th>
          <th>施工队电话</th>
          <th>禁</th>
          <th>操作</th>
        </tr>
      </thead>
      <thead class="SucceedCasus" style="display: none;">
        <tr>
          <th style="text-align:left; padding-left:20px;">ID</th>
          <th>施工地</th>
          <th>现场照</th>
          <th>组件商</th>
          <th>施工队</th>
          <th>开始时间</th>
          <th>验收时间</th>
          <th>预计时间</th>
          <th>实际时间</th>
          <th>投资人</th>
          <th>禁</th>
          <th>操作</th>
        </tr>
      </thead>
      <thead class="News" style="display: none;">
        <tr>
          <th style="text-align:left; padding-left:20px;">ID</th>
          <th>公司名</th>
          <th>公司logo</th>
          <th>公司地址</th>
          <th>公司邮箱</th>
          <th>公司电话</th>
          <th>禁</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
        
      </tbody>
      <tfoot>
        <tr>
          <td colspan="0" class="td-pagenation">
              <div class="pagelist">
                    <a href="#" class='prevpage'>上一页</a>

                    <a href="#" class='nextpage'>下一页</a>
                    <a href="#" class='end'>尾页</a>
              </div>
          </td>
        </tr>
      </tfoot>
    </table>
  </div>
</form>
<script type="text/javascript">
  var pageSize = 5;
  var showPageBtnCount = 10;
  var tb = $(".on",parent.document).attr("name");
  $("."+tb).css("display","");
  initpage(1,false,false);
  getpage(1);
  $(".prevpage").click(function(){
    var prev = $(".current").prev().prev();
    if(prev){
      if(prev.attr("class")=='prevpage'){
        if($(this).next().html()=='...'){
          initpage(+$(".current").html()-showPageBtnCount,true,false);
        }
      }else if(prev.html()=='...'){
        initpage(+$(".current").html()-showPageBtnCount,true,false);
      }else{
        prev.click();
      }
    }
  })
  $(".nextpage").click(function(){
    var next = $(".current").next();
    if(next&&next.html()=='...'){
      initpage(+$(".current").html()+1,false,0);
    }
    if(next&&next.attr("class")!='nextpage'){
      next.click();
    }
  })
  $(".end").click(function(){
    initpage(1,1,true);
  });

  $(".add-btn").attr("href","/api/showAdd.do?tb="+tb);
  //删除
  function changeStatus(id){
/*     event = event ? event : window.event;   
    var obj = event.srcElement ? event.srcElement : event.target;  */
    var flag = confirm("您确定要执行该操作吗？");
  	if(flag){
        $.ajax({
          url:"/api/disable.do?id="+id+"&tb="+tb,
          success:function(data){
            if(data=="true"){
              getpage($(".pagelist .current").html());
            }else{
              alert("服务器正忙，请稍后再试。。。")
            }
          }
        });
  	}
  	return flag;
  }

  function getpage(page){
      $.ajax({
        url:"/api/list.do?pagesize="+pageSize+"&page="+page+"&tb="+$(".on",parent.document).attr("name"),
        dataType:"json",
        success:function(data){
          $(".td-pagenation").attr("colspan",data.attrCount);
          if(data.data.length==0){
            $(".td-pagenation").html("暂无数据！")
            return;
          }
          var str = template(tb,{items:data.data});
          $("tbody").html(str);
    /*       var els = $(".update"); 
          for(var i = 0 ;i<els.length;i++){
            els[i].href+="&tb="+tb;
          } */
        }
      });
  }
  function initpage(min,flag,getendpage){
      $.ajax({
        url:"/api/pagination.do?pagesize="+pageSize+"&showPageBtnCount="+showPageBtnCount+"&getendpage="+getendpage+"&min="+min+"&tb="+$(".on",parent.document).attr("name"),
        dataType:"json",
        success:function(data){
          if(data.length==1){
            getpage(data[0].page);
          }
          $(".pageno").remove();
          $("h").remove();
          $(".current").remove();
          var str = template("page",{pages:data});
          $(".prevpage").after(str);
          bindpageevent();
          if(flag) $(".pageno:eq("+($(".pageno").length-1)+")").click();
        }
      });
  }
  function bindpageevent(){
    $(".pageno").click(function(){
      var cur = $(".pagelist .current");
      cur.prev().css("display","");
      cur.remove();
      $(this).after($("<span>").addClass("current").html($(this).html()));
      $(this).css("display","none");
      getpage($(this).html());
    })
  }

</script>
</body>
</html>