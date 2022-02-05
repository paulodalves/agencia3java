package com.destinocerto.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.destinocerto.dao.DestinoDAO;

import com.destinocerto.model.Destino;


/**
 * Servlet implementation class DestinoConsultaAtualiza
 */
@WebServlet("/DAtualizar")
public class DestinoConsultaAtualiza extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DestinoConsultaAtualiza() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idDestino = Integer.parseInt(request.getParameter("idDestino"));

		Destino destino = DestinoDAO.acharPorId(idDestino);

		request.setAttribute("destino", destino);
		RequestDispatcher despacho = request.getRequestDispatcher("atualizadestino.jsp");
		despacho.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Destino destino = new Destino();

		destino.setIdDestino(Integer.parseInt(request.getParameter("id")));
		destino.setDescricao(request.getParameter("descricao"));
		destino.setValor(Float.parseFloat(request.getParameter("valor")));

		DestinoDAO.atualizar(destino);

		DestinoCriarEPesquisar destinoCriarEPesquisar = new DestinoCriarEPesquisar();
		destinoCriarEPesquisar.doGet(request, response);
		
	}

}
