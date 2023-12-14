<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ include file="../db/db_conn.jsp" %>

<%
   request.setCharacterEncoding("UTF-8");
   
   String filename = "";
   String realFolder = request.getServletContext().getRealPath("image/product");
   String encType = "utf-8";
   int maxSize = 5 * 1024 * 1024;

   DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
   MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);

   // ... (파일 업로드와 관련된 부분)

   ProductRepository dao = ProductRepository.getInstance();

   String userId = multi.getParameter("j_ID");
   String password = multi.getParameter("j_Password");
   String name = multi.getParameter("j_Name");
   String gender = multi.getParameter("j_Gender");
   String birth = multi.getParameter("j_Birth");
   String email = multi.getParameter("j_Email");
   String phone = multi.getParameter("j_phone");
   String address = multi.getParameter("address");
   String condition = multi.getParameter("j_condition");

   Integer price = 0;
   if (!multi.getParameter("unitPrice").isEmpty()) {
      price = Integer.valueOf(multi.getParameter("unitPrice"));
   }

   long stock = 0;
   if (!multi.getParameter("unitsInStock").isEmpty()) {
      stock = Long.valueOf(multi.getParameter("unitsInStock"));
   }

   Enumeration files = multi.getFileNames();
   String fname = (String) files.nextElement();
   String fileName = multi.getFilesystemName(fname);

   java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   String currentTime = sdf.format(new java.util.Date());

   Product newProduct = new Product();
   newProduct.setProductId(userId);
   newProduct.setPname(name);
   newProduct.setUnitPrice(price);
   newProduct.setDescription("");
   newProduct.setManufacturer("");
   newProduct.setCategory("");
   newProduct.setUnitsInStock(stock);
   newProduct.setCondition(condition);
   newProduct.setFilename(fileName);
   newProduct.setRegistDay(currentTime);

   dao.addProduct(newProduct);

   response.sendRedirect("index.jsp");
%>