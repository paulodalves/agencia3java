package com.destinocerto.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.destinocerto.dao.UsuarioDAO;
import com.destinocerto.model.Usuario;

@WebServlet("/UCriarEPesquisar")
public class UsuarioCriarEPesquisar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UsuarioCriarEPesquisar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pesquisa = request.getParameter("pesquisa");
		
		if (pesquisa == null) {
			pesquisa = "";
		}
		
		List<Usuario> usuarios = UsuarioDAO.pesquisar(pesquisa);
		request.setAttribute("usuarios", usuarios);
		
		RequestDispatcher despacho = request.getRequestDispatcher("listausuarios.jsp");
		despacho.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		
		usuario.setNome(request.getParameter("nome"));
		usuario.setSobrenome(request.getParameter("sobrenome"));
		usuario.setCpf(request.getParameter("cpf"));
		usuario.setSexo(request.getParameter("sexo"));
		usuario.setDataNascimento(request.getParameter("dtNascimento"));
		usuario.setTelefone(request.getParameter("telefone"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		
		UsuarioDAO.criar(usuario);
		
		doGet(request, response);
	}

}
