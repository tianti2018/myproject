<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ResourceBundle"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.7.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->

<html lang="zh-CN">
<head>
<%ResourceBundle res = ResourceBundle.getBundle("system"); %> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta content="width=device-width, initial-scale=1.0" name="viewport"/> -->
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="x-dns-prefetch-control" content="on">   
    <meta http-equiv="x-dns-prefetch-control" content="on">
	<title>我的团队</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/user.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/family.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/buttons.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.s.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/my_v2.s.min.css">	
	<link href="<%=request.getContextPath()%>/css/footer.css" rel="stylesheet" />
	<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/source/jquery.fancybox.css?v=2.1.5" media="screen" />
	<link href="<%=request.getContextPath()%>/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<script src="<%=request.getContextPath()%>/js/jquery-1.11.1.js" type="text/javascript"></script>
</head>

<body style="background-color: #efefef">

<script type="text/javascript">
var pageNum = 1;
var viewLevel="${viewLevel==null?'all':viewLevel}";
function insertcode() {
	pageNum++;
	//var viewLevel='${viewLevel}';
    /*加载内容*/
	$.ajax({
		type: "POST",
		url:"<%=request.getContextPath()%>/user/userAction!ajaxListUserLevel.action",
		data:{
			"userId":'${userVo.usery.id }',
			"pageNum":pageNum,
			"viewLevel":viewLevel
			
		},
		async: false,
	    error: function(request) {
	        alert("网络出现问题稍等再试!!!");
	    },
	    dataType:"json",
	    success: function(data) {
	    	//var aa = eval(data);
	    	
	    	if (data.success==true) {
	    		var children = data.children;
	    		var child = '';
	    		for(var i=0;i<children.length;i++){
	    			var time= new Date(children[i].appDate).Format("yyyy-MM-dd hh:mm:ss");		    			
	    			child+=('<div class="item">');
	    			child+=('<div class="item_t">');
	    			child+=('<img src="'+children[i].headUrl+'" alt="" class="img">');
	    			child+=('<p>昵称:'+children[i].userName+'</p>');
	    			child+=('<p>ID：'+children[i].id+' </p>');
	    			if(children[i].level==0||children[i].level==null||
	    					children[i].level==""||children[i].level=="null"){
	    				child+=('<p>头衔：客官</p>');
	    			}else if(children[i].level==1){
	    				child+=('<p>头衔：店小二<img style="width: 15px" src="../images/s1.png"/></p>');
	    			}else if(children[i].level==2){
	    				child+=('<p>头衔：掌柜<img style="width: 15px" src="../images/s2.png"/></p>');
	    			}else if(children[i].level==3){
	    				child+=('<p>头衔：大掌柜<img style="width: 25px" src="../images/shenqing/4.png"/></p>');
	    			}
	    			child+=('</div><div class="item_m">');
	    			child+=('<p>关注时间'+time+'</p>');
	    			child+=('</ul></div></div>');
	    		}
	    		var ul = $("#appendUl");
	    		ul.append(child);
	    		
	    	}else{
	    		alert("已经加载完毕!");
	    	}
	    }
	});
	
}
$(document).ready(function () {
	/* alert("document.documentElement.scrollHeight:"+document.documentElement.scrollTop+
	"\ndocument.body.clientHeight:"+document.body.clientHeight+
	"\ndocument.documentElement.clientHeight:"+document.documentElement.clientHeight+
	"\ndocument.body.scrollTop:"+document.body.scrollTop+
	"\ndocument.documentElement.scrollTop:"+document.documentElement.scrollTop+
	"\ndocument.body.scrollHeight:"+document.body.scrollHeight+
	"\ndocument.documentElement.scrollHeight:"+document.documentElement.scrollHeight); */
    $(window).scroll(function () {
    	
		/*获取当前窗口的一些内容**/
		var a = document.documentElement.clientHeight ;
		var b = document.documentElement.scrollTop==0? document.body.scrollTop : document.documentElement.scrollTop;
		var c = document.documentElement.scrollTop==0? document.body.scrollHeight : document.documentElement.scrollHeight;
		/*判断是否滑动到达底部**/
		if(a+b==c&&b!=0){
			//alert(s);
			//alert(a+" "+b+" "+c);
			insertcode();
		}             
    });
});
</script>
	<!-- wrapper start -->
	<div>
		<!-- 头部个人信息 start -->
		<%@ include file="/WEB-INF/jsp/order_head.jsp"%>
		<!-- 主要内容区域 -->
		<div class="my_header_links">
	            <a href="<%=request.getContextPath()%>/user/userAction!viewPeoPage.action?viewLevel=3"><span id="dazhanggui"></span><span id="wodefensi">大掌柜</span></a>
	            <a href="<%=request.getContextPath()%>/user/userAction!viewPeoPage.action?viewLevel=2"><span id="zhanggui"></span><span id="wodefensi">掌柜</span></a>
	            <a href="<%=request.getContextPath()%>/user/userAction!viewPeoPage.action?viewLevel=1"><span id="dianxiaoer"></span><span id="wodefensi">店小二</span></a>
	            <a href="<%=request.getContextPath()%>/user/userAction!viewPeoPage.action?viewLevel=0"><span id="zhundianxiaoer"></span><span id="wodefensi">准店小二</span></a>
	        </div>
		<div >
			<div class="my_member_sear">
				<form action="<%=request.getContextPath()%>/user/userAction!viewPeoPage.action">
				<input id="userId" class="input" placeholder="ID" type="text" name="userId" onchange="shuzi()">
				<input type="submit" class="btn"  value="搜寻会员">
				
				</form>
			</div>	
			<div class="my_member" id="appendUl">
			<c:forEach items="${userList}" var="item" varStatus="status">
				<div class="item" >
					
					<div class="item_t">
					<img src="${item.headUrl==null?'/images/s1.png':item.headUrl}" class="img">
					<P>昵称:${item.userName}</P>
					<P>ID：${item.id}</P>
					<P>头衔：<c:if test="${item.level == 0|| item.level == null}">客官</c:if>
						<c:if test="${item.level == 1}">店小二<img style="width: 15px" src="../images/s1.png"/></c:if>
						<c:if test="${item.level == 2}">掌柜<img style="width: 15px" src="../images/s2.png"/></c:if>
						<c:if test="${item.level == 3}">大掌柜<img style="width: 25px" src="../images/shenqing/4.png"/></c:if></P>
					</div>
					<div class="item_m">
					<P>关注时间：${item.appDate}</P>
					<%-- <P>星级：<c:if test="${viewLevel==1}">超级粉丝</c:if>
					<c:if test="${viewLevel==2}">铁杆粉丝</c:if>
					<c:if test="${viewLevel==3}">忠实粉丝</c:if></P>
					<P>店铺等级：<c:if test="${p2.cardId== null||p2.cardId == 0}">未开店</c:if>
		            	<c:if test="${p2.cardId== 1}">黄金店</c:if>
						<c:if test="${p2.cardId== 2}">黑钻店</c:if>
						<c:if test="${p2.cardId== 3}">蓝钻店</c:if>
						<c:if test="${p2.cardId== 4}">黄钻店</c:if>
						<c:if test="${p2.cardId== 5}">绿钻店</c:if>
						<c:if test="${p2.cardId== 6}">红钻店</c:if>
						<c:if test="${p2.cardId== 7}">皇冠店</c:if>
						<c:if test="${p2.cardId== 8}">旗舰店</c:if>
						<c:if test="${p2.cardId== 9}">星火总店</c:if>     
						</P> --%>
     				<%-- <h5>手机号：<i>${item.address.mobile}</i></h5> --%>
     				<%-- <p>微信号：${item.address.zipcode}</p> --%>
     				</div>
						<%-- <div class="item_f">
							<ul>
								<li><c:if test="${item.level==null || item.level==0}">
										<p>
											<font color="red">尚未购买</font>
										</p>
									</c:if></li>
								<li><c:if test="${item.level!=null && item.level!=0}">
										<a href="#" class="btn btn1"
											onclick="searchOrder(${item.userId},${viewLevel})">查看订单</a>
									</c:if></li>
								<li><a href="#" class="btn btn3" style="display: none">查看</a></li>
								<li><a id="liuyan" href="#inline" class="btn btn3"
									onclick="viewDialog('${item.unionid}');">留言</a></li>
							</ul>
						</div> --%>

					</div>
				</c:forEach>	
			</div>
			
		</div>
	</div>

	<div class="panel panel-primary" id="inline" style="display: none;">
		<div class="panel-heading">
			<h3 class="panel-title">留言</h3>
		</div>
		<div class="panel-body">
			<div>
				<div class="form-group">
					留言内容:
					<textarea class="form-control" rows="8" id="textMessage"></textarea>
				</div>
			</div>
			<div>
				<input type="hidden" value="" id="wxOpenid" /> <a
					class="button button-pill button-primary" href="#" role="button"
					onclick="sendMessage();">发送</a> <a
					class="button button-pill button-primary" href="#" role="button"
					onclick="closefancybox();">关闭</a>
			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<!-- footer start -->
<%@ include file="/WEB-INF/jsp/footer.jsp"%>

		
	<script src="<%=request.getContextPath()%>/bootstrap-3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/css/source/jquery.fancybox.pack.js?v=2.1.5"></script>
	<script type="text/javascript">
	Date.prototype.Format = function (fmt) { //author: meizz 
	    var o = {
	        "M+": this.getMonth() + 1, //月份 
	        "d+": this.getDate(), //日 
	        "h+": this.getHours(), //小时 
	        "m+": this.getMinutes(), //分 
	        "s+": this.getSeconds(), //秒 
	        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
	        "S": this.getMilliseconds() //毫秒 
	    };
	    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	    for (var k in o)
	    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	    return fmt;
	}
	
	function shuzi() {
		var reg = new RegExp("^[0-9]*$");  
	    if(!reg.test($("#userId").val())){  
	        alert("请输入数字!");  
	        $("#userId").val("");
	    }  
	    /* if(!/^[0-9]*$/.test(obj.value)){  
	        alert("请输入数字!");  
	    }   */
	}
	
	
	function go1 () {
		var url = arguments[0];
		$.fancybox.open('http://101.201.172.238/'+url);
	}
	
	function closefancybox() {
		jQuery.fancybox.close();
		$('#textMessage').val("");
	}
	
	function viewDialog() {
		$("#wxOpenid").val(arguments[0]);
		 $("#liuyan").fancybox({
		        'hideOnContentClick': true
		 });
	}
	
	function sendMessage() {
		var textMessage = $('#textMessage').val();
		var wxOpenid = $("#wxOpenid").val();;
		if (textMessage=="") {
			alert("留言内容不能为空");
			return false;
		}
		var url ='<%=request.getContextPath()%>/user/userAction!sendMessage.action';
		$.ajax({
			cache: true,
			type: "POST",
			url:url,
			data:"wxOpenid="+wxOpenid+"&textMessage="+textMessage,// 你的formid
			async: false,
		    error: function(request) {
		        alert("网络出现问题稍等再试!!!");
		    },
		    success: function(data) {
		    	if (data.success) {
		    		alert("留言成功");
		    		$('#textMessage').val("");
		    		jQuery.fancybox.close();
		    		
		    	}
		    }
		});
	}
	
	function searchInfo() {
		var title=$.trim($("#search_text").val());
		
		$("#searchValue").val(title);
		$("#frmList").submit();
	}
	
	function searchOrder(userId,level){
		$.ajax({
			type: "POST",
			url:"<%=request.getContextPath()%>/order/orderAction!searchOrder.action",
			data:{
				"userId":userId,
				"levelValue":level
			},
			dataType:"json",
		    error: function(request) {
		        alert("Connection error111");
		    },
		    success: function(data) {
		    	if (data.success) {
					alert("订单编号:"+data.ordersBH+"\n下单时间:"+data.createDate);		    		
		    	}else{
		    		alert("无订单");
		    	}
		    }
		});
	}
	
	
	
	function onBridgeReady() {
		WeixinJSBridge.call('hideOptionMenu');
	}

	if (typeof WeixinJSBridge == "undefined") {
		if (document.addEventListener) {
			document.addEventListener('WeixinJSBridgeReady', onBridgeReady,
					false);
		} else if (document.attachEvent) {
			document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
			document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
		}
	} else {
		onBridgeReady();
	}
</script>
	
</body>
</html>