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
    
    <title>��дѧ���϶���</title>
    
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
             <!-- ����ӡ���ť����ģ̬�� -->
		     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			 ���
		     </button>
             <!-- ��ɾ������ť����ģ̬�� -->
		     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			 ����ɾ��
		     </button>
         </div>
         
         <!--------------------------���/�޸���Ϣ�ĵ�����---------------------------->
		
			<!-- ģ̬��Modal�� -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								��ӿγ�
							</h4>
						</div>
						
						<form action="credit_fill.jsp" class="form_fill_insert">
						<div class="modal-body">
							
							
							    �γ̴��룺<input type="text"><br><br>
							    �γ����ƣ�<input type="text"><br><br>					
							    ѧ&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp�֣�<input type="text"><br><br>
							    �޶�ѧ�ڣ�<input type="text"><br><br>
							    ��&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp����<input type="text">
							

						</div>
						<div class="modal-footer">
						    <button type="reset" class="btn btn-primary">����</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">�ر�</button>
							<button type="submit" class="btn btn-primary">�ύ���</button>
						</div>
						</form>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
         
         
         <div class="div_score_sav_sub">
             <div class="div_score">
                 <span>��Ĵ��ѧ��Ϊ**ѧ��</span><br>
                 <span>��¼���޶����ѧ��Ϊ**ѧ��</span>
             </div>
             <div class="div_sav_sub">
                 <input type="button" value="����">
                 <input type="button" value="�ύ">
             </div>
         </div>
        
        
     </div>

  </body>
</html>
