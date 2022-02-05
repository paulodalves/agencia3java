package com.destinocerto.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.destinocerto.dao.UsuarioDAO;

@WebServlet("/UApagar")
public class UsuarioApagar extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public UsuarioApagar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
		
		UsuarioDAO.deletar(idUsuario);
		
		UsuarioCriarEPesquisar usuarioCriarEPesquisar = new UsuarioCriarEPesquisar();
		usuarioCriarEPesquisar.doGet(request, response);
		
	}

}
