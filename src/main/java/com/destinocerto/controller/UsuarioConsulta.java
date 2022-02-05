package com.destinocerto.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.destinocerto.dao.UsuarioDAO;
import com.destinocerto.model.Usuario;

@WebServlet("/UConsultar")
public class UsuarioConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UsuarioConsulta() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));

		Usuario usuario = UsuarioDAO.acharPorId(idUsuario);

		request.setAttribute("usuario", usuario);
		RequestDispatcher despacho = request.getRequestDispatcher("consultausuario.jsp");
		despacho.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
