package es.salesianos.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.salesianos.connection.ConnectionH2;
import es.salesianos.connection.ConnectionManager;
import es.salesianos.model.User;
import es.salesianos.model.assembler.UserAssembler;
import es.salesianos.repository.Repository;
import es.salesianos.service.Service;
import es.salesianos.utils.DateConverter;

public class ComebackServlet extends HttpServlet{
	private Repository repository = new  Repository();
	
	
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String user = req.getParameter("user");
		req.setAttribute("nom", user);
		repository.delete(user);

		redirect(req,resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user = req.getParameter("user");
		req.setAttribute("nom", user);
		
		
		servicio.delete(user);
		
		redirect(req,resp);
		
	}

	private void redirect(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listado.jsp");
		dispatcher.forward(req,resp);
	}
	
}
