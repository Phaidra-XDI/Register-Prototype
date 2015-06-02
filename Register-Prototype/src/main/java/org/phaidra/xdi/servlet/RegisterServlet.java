package org.phaidra.xdi.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.phaidra.xdi.XdiRegisterService;

import xdi2.client.exceptions.Xdi2ClientException;

/**
 * Servlet implementation class for Servlet: RegisterServlet
 *
 */
public class RegisterServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

	private static final long serialVersionUID = -7992869748227307547L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// back to HTML page

		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// read request parameters

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String submitKey = request.getParameter("submit").substring(request.getParameter("submit").length() - 1);

		String xdiEndpointUri = request.getParameter("xdiEndpointUri");
		String phaidraIdentifier = request.getParameter("phaidraIdentifier" + submitKey);
		String[] identifiers = request.getParameter("identifiers" + submitKey).split(",");

		// register identifiers

		XdiRegisterService service = new XdiRegisterService(xdiEndpointUri);

		try {

			service.setIdentifiers(phaidraIdentifier, identifiers);
			request.setAttribute("feedback", "Success!");
		} catch (Xdi2ClientException ex) {

			request.setAttribute("error", "Cannot send message to XDI registry: " + ex.getMessage());
		}

		// back to HTML page

		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
}
