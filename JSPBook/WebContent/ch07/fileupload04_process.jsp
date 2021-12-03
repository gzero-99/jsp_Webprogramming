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
		String path = "/Users/rosa/eclipse-workspace/upload";

		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);
		upload.setRepositoryPath(path);
		
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
		
		
		while(params.hasNext()){
			FileItem item = (FileItem) params.next();
			
			if(item.isFormField()){
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name+ "="+ value + "<br>");
			}else{
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				long fileSize = item.getSize();
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.println("-----------------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + " <br> ");
				out.println("저장 파일 이름 : "+ fileName + "<br>");
				out.println("파일 콘텐츠 유형 : "+  contentType + "<br>");
				out.println("파일 크기 : "+  fileSize);

			}
		}
		//이미 업로드 폴더에 있는 파일과 같은 명의 파일은 업로드가 되지 않음 주의! 
	%>
</body>
</html>