<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.Address" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Authenticator" %>
<%@ page import="java.util.Properties" %>
<%@ page import="user.UserDAO" %>
<%@ page import="util.SHA256" %>
<%@ page import="util.Gmail" %>
<%@ page import="java.io.PrintWriter" %>

<%
	UserDAO userDAO = new UserDAO();
	String userID = null;
	
	if( session.getAttribute("userID") != null)
	{
		userID = (String) session.getAttribute("userID");
	}
	if( userID == null )
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요.')");
		script.println("location.href = 'userLogin.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	
	request.setCharacterEncoding("UTF-8");
	String reportTitle = null;
	String reportContent = null;
	if(request.getParameter("reportTitle")!=null)
		reportTitle = request.getParameter("reportTitle");
	if(request.getParameter("reportContent")!=null)
		reportContent = request.getParameter("reportContent");
	if(reportTitle == null || reportContent==null)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	
	String host = "http://localhost:8080/Course%20Evaluation/";
	String from = "jayle924@gmail.com";
	String to = "jerryv@naver.com";
	String subject = "강의평가 사이트에서 접수된 신고 메일입니다.";
	String content = "신고자: " +userID +
					 "<br>제목: "+reportTitle +
					 "<br>내용: "+reportContent;
		 
	// smtp 프로토콜 프로퍼티 설정 부분	
	Properties prop= new Properties();
	prop.put("mail.smtp.host","smtp.gmail.com");
	prop.put("mail.smtp.user",from);
	prop.put("mail.smtp.port","587");
	prop.put("mail.smtp.starttls.enable","true");
	prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
	//prop.put("mail.smtp.ssl.enable","true");
	prop.put("mail.smtp.auth","true");
	prop.put("mail.smtp.debug","true");
	//prop.put("mail.smtp.socketFactory.port","587");
	//prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	//prop.put("mail.smtp.socketFactory.fallback","false");
	// 실제 이메일 전송 코드 부분
	try{
		Authenticator auth = new Gmail();
		
		Session ses = Session.getInstance(prop,auth);
		ses.setDebug(true);
		
		MimeMessage msg = new MimeMessage(ses);
		msg.setSubject(subject);
		
		Address fromAddr = new InternetAddress(from);
		msg.setFrom(fromAddr);
		
		Address toAddr = new InternetAddress(to);
		msg.addRecipient(Message.RecipientType.TO,toAddr);
		msg.setContent(content,"text/html;charset=UTF8");
		
		Transport.send(msg);
	}catch(Exception e){
		e.printStackTrace();
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('오류가 발생했습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('정상적으로 신고가 접수되었습니다.')");
	script.println("history.back();");
	script.println("</script>");
	script.close();
	return;
%>