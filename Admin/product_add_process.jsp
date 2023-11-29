<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>

<%
%>

<%
	request.setCharacterEncoding("UTF-8");
String filename = "";
String realFolder = request.getServletContext().getRealPath("image/product"); //웹 어플리케이션상의 절대 경로
String encType = "utf-8"; //인코딩 타입
int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);


	String productId = multi.getParameter("productid");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");


	Integer price;

	if (unitPrice == null || unitPrice.trim().isEmpty()) {
		price = 0;
	} else {
		try {
			price = Integer.valueOf(unitPrice);
		} catch (NumberFormatException e) {
			// Handle the case where unitPrice is not a valid integer
			// You can choose to log the error, display a message, or take other actions
			e.printStackTrace();  // This will print the stack trace to the console
			price = 0;  // Default value in case of an error
		}
	}

	long stock;

	if (unitsInStock == null || unitsInStock.trim().isEmpty()) {
		stock = 0;
	} else {
		try {
			stock = Long.valueOf(unitsInStock);
            
            Enumeration files = multi.getFileNames();
            String fname = (String) files.nextElement();
            String fileName = multi.getFilesystemName(fname);

		} catch (NumberFormatException e) {
			// Handle the case where unitsInStock is not a valid long
			// You can choose to log the error, display a message, or take other actions
			e.printStackTrace();  // This will print the stack trace to the console
			stock = 0;  // Default value in case of an error
		}
	}

	ProductRepository dao = ProductRepository.getInstance();

	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);

	dao.addProduct(newProduct);

	response.sendRedirect("index_ad.jsp");
%>
