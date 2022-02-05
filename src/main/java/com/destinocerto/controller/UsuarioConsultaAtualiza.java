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

@WebServlet("/UAtualizar")
public class UsuarioConsultaAtualiza extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UsuarioConsultaAtualiza() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));

		Usuario usuario = UsuarioDAO.acharPorId(idUsuario);

		request.setAttribute("usuario", usuario);
		RequestDispatcher despacho = request.getRequestDispatcher("atualizausuario.jsp");
		despacho.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Usuario usuario = new Usuario();

		usuario.setIdUsuario(Integer.parseInt(request.getParameter("id")));
		usuario.setNome(request.getParameter("nome"));
		usuario.setSobrenome(request.getParameter("sobrenome"));
		usuario.setCpf(request.getParameter("cpf"));
		usuario.setSexo(request.getParameter("sexo"));
		usuario.setDataNascimento(request.getParameter("dtNascimento"));
		usuario.setTelefone(request.getParameter("telefone"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));

		UsuarioDAO.atualizar(usuario);

		UsuarioCriarEPesquisar usuarioCriarEPesquisar = new UsuarioCriarEPesquisar();
		usuarioCriarEPesquisar.doGet(request, response);
	}
}
