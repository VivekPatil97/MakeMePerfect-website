package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		session.removeAttribute("name");
		session.removeAttribute("username");
		session.removeAttribute("Ausername");
		session.removeAttribute("Aname");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		session.removeAttribute("username");
		session.removeAttribute("name");
		session.removeAttribute("Ausername");
		session.removeAttribute("Aname");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}

}