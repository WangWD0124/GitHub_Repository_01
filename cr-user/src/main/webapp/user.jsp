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
	      alert("��������ƷID��");
	      book_insert_form.id.focus();
	      return false;
	   }
	   if(book_insert_form.name.value==null||book_insert_form.name.value==""){
	      alert("��������Ʒ���ƣ�");
	      book_insert_form.name.focus();
	      return false;
	   }
	   if(book_insert_form.price.value==null||book_insert_form.price.value==""){
	      alert("��������Ʒ�۸�");
	      book_insert_form.price.focus();
	      return false;
	   }
	   if(isNaN(book_insert_form.price.value)){
	      alert("��Ʒ�۸�ֻ�����֣�");
	      book_insert_form.price.focus();
	      return false;
	   }
	   if(book_insert_form.pnum.value==null||book_insert_form.pnum.value==""){
	      alert("��������Ʒ������");
	      book_insert_form.pnum.focus();
	      return false;
	   }
	   if(book_insert_form.category.value==null||book_insert_form.category.value==""){
	      alert("��ѡ����Ʒ���");
	      book_insert_form.price.focus();
	      return false;
	   }
	   if(book_insert_form.imgurl.value==null||book_insert_form.imgurl.value==""){
	      alert("��������ƷͼƬ��");
	      book_insert_form.imgurl.focus();
	      return false;
	   }
	   if(book_insert_form.description.value==null||book_insert_form.description.value==""){
	      alert("��������Ʒ������");
	      book_insert_form.description.focus();
	      return false;
	   }
	   }
	</script>

  </head>
  
  <body>
  
  <form method="post" action="BMS/do_insert.jsp" name="book_insert_form">
     <table>
         <tr><th class="th" colspan="4">�����Ʒ</th></tr>
         <tr>
             <td class="td_a">��ƷID��</td><td class="td_b"><input type="text" name="id" size="15em"></td>
             <td class="td_a">��Ʒ�۸�</td><td class="td_b">��<input type="text" name="price" size="15em"></td>
         </tr>
         <tr>
             <td class="td_a">��Ʒ���ƣ�</td><td class="td_b"><input type="text" name="name" size="15em"></td>
             <td class="td_a">��Ʒ������</td><td class="td_b"><input type="number" name="pnum">��</td>
         <tr>
             <td class="td_a">��Ʒ���</td><td><select name="category" size="">
			                                       <option value="">--ѡ����Ʒ���--</option>
			                                       <option value="��ѧ">��ѧ</option>
			                                       <option value="����">����</option>
			                                       <option value="�����">�����</option>
                                                </select></td>
             <td class="td_a">��ƷͼƬ��</td><td class="td_b"><input type="file" name="imgurl"></td>
         </tr>
         <tr>
             <td class="td_a">��Ʒ������</td><td class="td_b" colspan="3"><textarea rows="5" cols="50" wrap="true" name="description"></textarea></td>
         </tr>
         <tr>
             <td class="td_a" colspan="4">
                 <input type="submit" name="submit" value="ȷ��" onclick="return check();" >
                 <input type="reset" name="reset" value="����">
                 <input type="button" value="����"></td></tr>
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
