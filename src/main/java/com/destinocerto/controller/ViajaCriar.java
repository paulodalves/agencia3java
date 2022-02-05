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
import com.destinocerto.dao.UsuarioDAO;
import com.destinocerto.dao.ViajaDAO;
import com.destinocerto.model.Destino;
import com.destinocerto.model.Usuario;
import com.destinocerto.model.Viaja;

@WebServlet("/VCriarEPesquisar")
public class ViajaCriar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViajaCriar() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Destino> destinos = DestinoDAO.pesquisar();
		List<Usuario> usuarios = UsuarioDAO.pesquisar();

		request.setAttribute("destinos", destinos);
		request.setAttribute("usuarios", usuarios);

		RequestDispatcher despacho = request.getRequestDispatcher("marcaviagens.jsp");
		despacho.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//int idDestino = Integer.parseInt(request.getParameter("idDestino"));

		System.out.println(request.getParameter("IdDestino"));

		System.out.println(request.getParameter("dataPartida"));

		System.out.println(request.getParameter("dataRetorno"));

		System.out.println(request.getParameter("transporte"));
		
		
		Viaja viaja = new Viaja();

		Usuario usuario = UsuarioDAO.acharPorId(Integer.parseInt(request.getParameter("idUsuario")));
		Destino destino = DestinoDAO.acharPorId(Integer.parseInt(request.getParameter("idDestino")));

		viaja.setDataPartida(request.getParameter("dataPartida"));
		viaja.setDataRetorno(request.getParameter("dataRetorno"));
		viaja.setTransporte(request.getParameter("transporte"));
		viaja.setDestinoU(destino.getDescricao());
		viaja.setUsuario(usuario);
		viaja.setDestino(destino);

		ViajaDAO.criar(viaja);

		RequestDispatcher despacho = request.getRequestDispatcher("index.jsp");
		despacho.forward(request, response);
	}

}
