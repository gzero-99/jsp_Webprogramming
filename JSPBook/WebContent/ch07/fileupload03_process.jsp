<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import ="org.apache.commons.fileupload.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<%
		String fileUploadPath = "/Users/rosa/eclipse-workspace/upload";

		DiskFileUpload upload = new DiskFileUpload();
		
		List items = upload.parseRequest(request);
		
		Iterator params = items.iterator();
		
		while(params.hasNext()){
			FileItem fileItem = (FileItem) params.next();
			
			if(!fileItem.isFormField()){
				String fileName = fileItem.getName();
				
				//System.out.println(fileName+"...."+fileName.lastIndexOf("\\")); 
			
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
			}
		}
		//이미 업로드 폴더에 있는 파일과 같은 명의 파일은 업로드가 되지 않음 주의! 
	%>
</body>
</html>