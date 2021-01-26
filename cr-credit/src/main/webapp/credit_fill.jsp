<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GBK" contentType="text/html; charset=UTF-8"%>
<%
  request.setCharacterEncoding("GBK");
  response.setCharacterEncoding("GBK");
  response.setContentType("GBK"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>填写学分认定表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.5/css/bootstrap.min.css" />
    
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
  </head>
  
  <body>
     <div class="div_body">
     
         <div class="div_ins_del">
             <!-- “添加”按钮触发模态框 -->
		     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			 添加
		     </button>
             <!-- “删除”按钮触发模态框 -->
		     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			 批量删除
		     </button>
         </div>
         
         <!--------------------------添加/修改信息的弹出层---------------------------->
		
			<!-- 模态框（Modal） -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								添加课程
							</h4>
						</div>
						
						<form action="credit_fill.jsp" class="form_fill_insert">
						<div class="modal-body">
							
							
							    课程代码：<input type="text"><br><br>
							    课程名称：<input type="text"><br><br>					
							    学&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp分：<input type="text"><br><br>
							    修读学期：<input type="text"><br><br>
							    成&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp绩：<input type="text">
							

						</div>
						<div class="modal-footer">
						    <button type="reset" class="btn btn-primary">重置</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">提交添加</button>
						</div>
						</form>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
         
         
         <div class="div_score_sav_sub">
             <div class="div_score">
                 <span>你的达标学分为**学分</span><br>
                 <span>已录入修读获得学分为**学分</span>
             </div>
             <div class="div_sav_sub">
                 <input type="button" value="保存">
                 <input type="button" value="提交">
             </div>
         </div>
        
        
     </div>

  </body>
</html>
