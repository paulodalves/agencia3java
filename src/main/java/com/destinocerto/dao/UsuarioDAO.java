package com.destinocerto.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.destinocerto.data.MySQLConnection;
import com.destinocerto.model.Usuario;

public class UsuarioDAO {

	private static Connection connection = MySQLConnection.createConnection();
	private static String sql;

	public static void criar(Usuario usuario) {

		sql = "INSERT INTO usuario (idUsuario, nome, cpf, sexo, dataNascimento, telefone, email, senha) VALUES"
				+ "(null, ?, ?, ?, ?, ?, ?, ?)";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, usuario.getNome());
			preparedStatement.setString(2, usuario.getCpf());
			preparedStatement.setString(3, usuario.getSexo());
			preparedStatement.setString(4, usuario.getDataNascimento());
			preparedStatement.setString(5, usuario.getTelefone());
			preparedStatement.setString(6, usuario.getEmail());
			preparedStatement.setString(7, usuario.getSenha());

			preparedStatement.executeUpdate();

			System.out.println("-- Incluído com sucesso!");

		} catch (SQLException e) {
			System.out.println("-- Erro na inclusão! " + e.getMessage());
		}

	}

	public static void deletar(int idUsuario) {
		sql = "DELETE FROM usuario WHERE idUsuario= ?";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, idUsuario);
			preparedStatement.executeUpdate();
			System.out.println("Usuario excluído!");

		} catch (SQLException e) {
			System.out.println("Falha na exclsão! " + e.getMessage());
		}
	}

	public static List<Usuario> pesquisar(String pesquisa) {

		sql = String.format("SELECT * FROM usuario WHERE nome LIKE '%s%%' ", pesquisa);

		List<Usuario> usuarios = new ArrayList<Usuario>();

		try {

			Statement statement = connection.createStatement();

			ResultSet resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				Usuario usuario = new Usuario();
				usuario.setIdUsuario(resultSet.getInt("idUsuario"));
				usuario.setNome(resultSet.getString("nome"));
				usuario.setCpf(resultSet.getString("cpf"));
				usuario.setSexo(resultSet.getString("sexo"));
				usuario.setDataNascimento(resultSet.getString("dataNascimento"));
				usuario.setTelefone(resultSet.getString("telefone"));
				usuario.setEmail(resultSet.getString("email"));
				usuario.setSenha(resultSet.getString("senha"));

				usuarios.add(usuario);
			}

			System.out.println("Consulta realizada com sucesso!");

			return usuarios;

		} catch (SQLException e) {

			System.out.println("Falha na busca! " + e.getMessage());

			return null;

		}
	}

	public static Usuario acharPorId(int idUsuario) {

		sql = String.format("SELECT * FROM usuario WHERE idUsuario=%d", idUsuario);

		try {

			Statement statement = connection.createStatement();

			ResultSet resultSet = statement.executeQuery(sql);

			Usuario usuario = new Usuario();

			while (resultSet.next()) {

				usuario.setIdUsuario(resultSet.getInt("idUsuario"));
				usuario.setNome(resultSet.getString("nome"));
				usuario.setCpf(resultSet.getString("cpf"));
				usuario.setSexo(resultSet.getString("sexo"));
				usuario.setDataNascimento(resultSet.getString("dataNascimento"));
				usuario.setTelefone(resultSet.getString("telefone"));
				usuario.setEmail(resultSet.getString("email"));
				usuario.setSenha(resultSet.getString("senha"));

			}

			System.out.println("Consulta realizada com sucesso!");

			return usuario;

		} catch (SQLException e) {

			System.out.println("Falha na busca! " + e.getMessage());

			return null;

		}
	}

	public static void atualizar(Usuario usuario) {

		sql = "UPDATE usuario SET nome=?, cpf=?, sexo=?, dataNascimento=?, telefone=?, email=?, senha=? WHERE idUsuario=?";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, usuario.getNome());
			preparedStatement.setString(2, usuario.getCpf());
			preparedStatement.setString(3, usuario.getSexo());
			preparedStatement.setString(4, usuario.getDataNascimento());
			preparedStatement.setString(5, usuario.getTelefone());
			preparedStatement.setString(6, usuario.getEmail());
			preparedStatement.setString(7, usuario.getSenha());
			preparedStatement.setInt(8, usuario.getIdUsuario());

			preparedStatement.executeUpdate();

			System.out.println("-- Atualizado com sucesso!");

		} catch (SQLException e) {
			System.out.println("-- Erro na Atualização! " + e.getMessage());
		}

	}
	
	public static List<Usuario> pesquisar() {

		sql = "SELECT * FROM usuario";

		List<Usuario> usuarios = new ArrayList<Usuario>();

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			ResultSet resultSet = preparedStatement.executeQuery(sql);

			while (resultSet.next()) {
				Usuario usuario = new Usuario();
				usuario.setIdUsuario(resultSet.getInt("idUsuario"));
				usuario.setNome(resultSet.getString("nome"));
				usuario.setCpf(resultSet.getString("cpf"));
				usuario.setSexo(resultSet.getString("sexo"));
				usuario.setDataNascimento(resultSet.getString("dataNascimento"));
				usuario.setTelefone(resultSet.getString("telefone"));
				usuario.setEmail(resultSet.getString("email"));
				usuario.setSenha(resultSet.getString("senha"));

				usuarios.add(usuario);
			}

			System.out.println("Consulta realizada com sucesso!");

			return usuarios;

		} catch (SQLException e) {

			System.out.println("Falha na busca! " + e.getMessage());

			return null;

		}
	}
	
	


}
