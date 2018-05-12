<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>


<style type="text/css">
	
	.divOne{
		font-family: 楷体;
		font-size: 14px;
		color:#6600FF;
		height:35px;
		width:180px; 
		text-align:center		
	}
	.divTwo{
		font-family: 楷体;
		font-size: 14px;
		color:#6600FF;
		height:35px;
		width:120px; 
		text-align:center		
	}
	#a {		
		background-color:#f2f4f7; 		
	}
	#b {		
		background-color:#b3c2d8; 		
	}
	#c {		
		background-color:#6f8bb5; 		
	}
	#d {		
		background-color:#4a6690; 		
	}
	
</style>

<script ype="text/javascript">
	function winSd() {
			var datetime = new Date();
			var winSettings = "dialogHeight:500px;dialogWidth:700px;status:no;help:no";
			var userId = arguments[0];

			var param = "?time="+datetime+"&userId="+userId;
			
			bid = window.showModalDialog("user!initAddUser.action"+param,'',winSettings);						
		}

</script>

</head>

<body >

<table width="1200"  height="40"  border="0"  align="center" cellpadding="0" cellspacing="0">
  <tr align="center" >
    <td height="55" valign="bottom" align="center" >
		
		<div class="divOne" id="a">${user.loginName}</div>
		<div id="b" class="divOne">
			<c:choose>
				<c:when test="${user.level == '0'}">
					普通会员
				</c:when>
				<c:when test="${user.level == '1'}">
					区域代理
				</c:when>
			</c:choose>
		</div>
		<div id="c" class="divOne">${user.submitMoney}</div>
		
		<div id="d" class="divOne"><a href="javascript:void(0);" onclick="reutrn winSd('${user.userId}');">注册</a></div>
			
	</td>
  </tr>
  <tr>
    <td align="center"><img src="images/member/index_02.jpg" width="1200" height="111" /></td>
  </tr>
</table> 
<table width="1200" height="40" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="119">&nbsp;</td>
    <td width="180"  valign="top">
		<div id="a" class="divOne">张三</div>
		<div id="b" class="divOne">高级主任</div>
		<div id="c" class="divOne">360</div>
		
		<div id="d" class="divOne">注册</div>
	</td>
    <td width="207">&nbsp;</td>
    <td width="180" bgcolor="#FFCC99">
		<div id="a" class="divOne">张三</div>
		<div id="b" class="divOne">高级主任</div>
		<div id="c" class="divOne">360</div>
		
		<div id="d" class="divOne">注册</div>
	</td>
    <td width="183">&nbsp;</td>
    <td width="180" bgcolor="#FFCC99">
		<div id="a" class="divOne">张三</div>
		<div id="b" class="divOne">高级主任</div>
		<div id="c" class="divOne">360</div>
		
		<div id="d" class="divOne">注册</div>
	</td>
    <td width="136">&nbsp;</td>
  </tr>
</table>
<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1200"><img src="images/member/index_05.jpg" width="1200" height="104" /></td>
  </tr>
</table>
<table width="1200" height="94" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="8">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
	</td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
	</td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
		</td>
    <td width="16">&nbsp; </td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
	</td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99"><div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
	</td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
    </td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
	</td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
    </td>
    <td width="16">&nbsp;</td>
    <td width="120" bgcolor="#FFCC99">
		<div id="a" class="divTwo">张三</div>
		<div id="b" class="divTwo">高级主任</div>
		<div id="c" class="divTwo">360</div>
		
		<div id="d" class="divTwo">注册</div>
	</td>
    <td width="16">&nbsp;</td>
  </tr>
</table>
</body>
</html>
