package com.destinocerto.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.destinocerto.dao.DestinoDAO;
import com.destinocerto.model.Destino;

@WebServlet("/DCriarEPesquisar")
public class DestinoCriarEPesquisar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DestinoCriarEPesquisar() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pesquisa = request.getParameter("pesquisa");

		if (pesquisa == null) {
			pesquisa = "";
		}

		List<Destino> destinos = DestinoDAO.pesquisar(pesquisa);
		request.setAttribute("destinos", destinos);
		
		RequestDispatcher despacho = request.getRequestDispatcher("listadestinos.jsp");
		despacho.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Destino destino = new Destino();

		destino.setDescricao(request.getParameter("descricao"));
		destino.setValor(Float.parseFloat(request.getParameter("valor")));

		DestinoDAO.criar(destino);

		doGet(request, response);
	}

}
