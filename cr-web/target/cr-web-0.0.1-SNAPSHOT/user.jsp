<%@ page language="java" import="java.util.*" pageEncoding="GBK" contentType="text/html; charset=UTF-8"%>
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
    
    <title>My JSP 'book_insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="BMS/css/bms_style.css">
	
	<script type="text/javascript">
	   function check(){
	   if(book_insert_form.id.value==null||book_insert_form.id.value==""){
	      alert("请输入商品ID！");
	      book_insert_form.id.focus();
	      return false;
	   }
	   if(book_insert_form.name.value==null||book_insert_form.name.value==""){
	      alert("请输入商品名称！");
	      book_insert_form.name.focus();
	      return false;
	   }
	   if(book_insert_form.price.value==null||book_insert_form.price.value==""){
	      alert("请输入商品价格！");
	      book_insert_form.price.focus();
	      return false;
	   }
	   if(isNaN(book_insert_form.price.value)){
	      alert("商品价格只能数字！");
	      book_insert_form.price.focus();
	      return false;
	   }
	   if(book_insert_form.pnum.value==null||book_insert_form.pnum.value==""){
	      alert("请输入商品数量！");
	      book_insert_form.pnum.focus();
	      return false;
	   }
	   if(book_insert_form.category.value==null||book_insert_form.category.value==""){
	      alert("请选择商品类别！");
	      book_insert_form.price.focus();
	      return false;
	   }
	   if(book_insert_form.imgurl.value==null||book_insert_form.imgurl.value==""){
	      alert("请输入商品图片！");
	      book_insert_form.imgurl.focus();
	      return false;
	   }
	   if(book_insert_form.description.value==null||book_insert_form.description.value==""){
	      alert("请输入商品描述！");
	      book_insert_form.description.focus();
	      return false;
	   }
	   }
	</script>

  </head>
  
  <body>
  
  <form method="post" action="BMS/do_insert.jsp" name="book_insert_form">
     <table>
         <tr><th class="th" colspan="4">添加商品</th></tr>
         <tr>
             <td class="td_a">商品ID：</td><td class="td_b"><input type="text" name="id" size="15em"></td>
             <td class="td_a">商品价格：</td><td class="td_b">￥<input type="text" name="price" size="15em"></td>
         </tr>
         <tr>
             <td class="td_a">商品名称：</td><td class="td_b"><input type="text" name="name" size="15em"></td>
             <td class="td_a">商品数量：</td><td class="td_b"><input type="number" name="pnum">本</td>
         <tr>
             <td class="td_a">商品类别：</td><td><select name="category" size="">
			                                       <option value="">--选择商品类别--</option>
			                                       <option value="文学">文学</option>
			                                       <option value="生活">生活</option>
			                                       <option value="计算机">计算机</option>
                                                </select></td>
             <td class="td_a">商品图片：</td><td class="td_b"><input type="file" name="imgurl"></td>
         </tr>
         <tr>
             <td class="td_a">商品描述：</td><td class="td_b" colspan="3"><textarea rows="5" cols="50" wrap="true" name="description"></textarea></td>
         </tr>
         <tr>
             <td class="td_a" colspan="4">
                 <input type="submit" name="submit" value="确定" onclick="return check();" >
                 <input type="reset" name="reset" value="重置">
                 <input type="button" value="返回"></td></tr>
     </table>
  
  </form>
     <% 
        Object r = session.getAttribute("insert_result");
        String insert_result = null;
        if(r!=null){
        insert_result = (String)r;
      %>
     <p id="book_insert_p_tip"><%=insert_result %></p>
     <%
        }
        session.setAttribute("insert_result", null);
      %>
  </body>
</html>
