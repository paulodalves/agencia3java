package com.destinocerto.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.destinocerto.dao.DestinoDAO;


/**
 * Servlet implementation class DestinoApagar
 */
@WebServlet("/DApagar")
public class DestinoApagar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DestinoApagar() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idDestino = Integer.parseInt(request.getParameter("idDestino"));

		DestinoDAO.deletar(idDestino);

		DestinoCriarEPesquisar destinoCriarEPesquisar = new DestinoCriarEPesquisar();
		destinoCriarEPesquisar.doGet(request, response);

	}

}
