package com.destinocerto.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.destinocerto.data.MySQLConnection;
import com.destinocerto.model.Destino;
import com.destinocerto.model.Viaja;

public class ViajaDAO {

	private static Connection connection = MySQLConnection.createConnection();
	private static String sql;

	public static void criar(Viaja viaja) {

		sql = "INSERT INTO viaja (idViagem, dataPartida, dataRetorno, transporte, fk_destino_idDestino, fk_usuarios_idUsuario) "
				+ "VALUES (null, ?, ?, ?, ?, ?)";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, viaja.getDataPartida());
			preparedStatement.setString(2, viaja.getDataRetorno());
			preparedStatement.setString(3, viaja.getTransporte());
			preparedStatement.setInt(4, viaja.getDestino().getIdDestino());
			preparedStatement.setInt(5, viaja.getUsuario().getIdUsuario());
			
			System.out.println(viaja.getDataPartida());
			
			System.out.println(viaja.getDataRetorno());

			System.out.println(viaja.getTransporte());
			
			System.out.println(viaja.getDestino().getIdDestino());
			System.out.println(viaja.getUsuario().getIdUsuario());

			preparedStatement.executeUpdate();

			System.out.println("-- Incluído com sucesso!");

		} catch (SQLException e) {
			System.out.println("-- Erro na inclusão! " + e.getMessage());
		}

	}
	
	public static List<Destino> pesquisar(String pesquisa) {

		sql = String.format("SELECT * FROM destino");

		List<Destino> destinos = new ArrayList<Destino>();

		try {

			Statement statement = connection.createStatement();

			ResultSet resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				
				Destino destino = new Destino();
				destino.setIdDestino(resultSet.getInt("idDestino"));
				destino.setDescricao(resultSet.getString("descricao"));
				destino.setValor(resultSet.getFloat("valor"));
				
				destinos.add(destino);
				
			}

			System.out.println("Consulta realizada com sucesso!");

			return destinos;

		} catch (SQLException e) {

			System.out.println("Falha na busca! " + e.getMessage());

			return null;

		}
	}
	
	public static Destino acharPorId(int idDestino) {

		sql = String.format("SELECT * FROM destino WHERE idDestino=%d", idDestino);

		try {

			Statement statement = connection.createStatement();

			ResultSet resultSet = statement.executeQuery(sql);

			Destino destino = new Destino();

			while (resultSet.next()) {

				destino.setIdDestino(resultSet.getInt("idDestino"));
				destino.setDescricao(resultSet.getString("descricao"));
				destino.setValor(resultSet.getFloat("valor"));
				
			}

			System.out.println("Consulta realizada com sucesso!");

			return destino;

		} catch (SQLException e) {

			System.out.println("Falha na busca! " + e.getMessage());

			return null;

		}
	}
	
	public static void atualizar(Destino destino) {

		sql = "UPDATE destino SET descricao=?, valor=? WHERE idDestino=?";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, destino.getDescricao());
			preparedStatement.setFloat(2, destino.getValor());
			preparedStatement.setInt(3, destino.getIdDestino());

			preparedStatement.executeUpdate();

			System.out.println("-- Atualizado com sucesso!");

		} catch (SQLException e) {
			System.out.println("-- Erro na Atualização! " + e.getMessage());
		}

	}

	public static void deletar(int idDestino) {
		
		sql = "DELETE FROM destino WHERE idDestino= ?";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, idDestino);
			preparedStatement.executeUpdate();
			System.out.println("Destino excluído!");

		} catch (SQLException e) {
			System.out.println("Falha na exclusão! " + e.getMessage());
		}
	}

	/*
	
	public static List<Viaja> consultar() {
		
		sql = "SELECT * FROM viaja";
		
		List<Viaja> viagens = new ArrayList<Viaja>();

		try {

			Statement statement = connection.createStatement();

			ResultSet resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				
				Viaja viagem = new Viaja();
				viagem.setIdViagem(resultSet.getInt("idViagem"));
				viagem.setDataPartida(resultSet.getString("dataPartida"));
				viagem.setDataRetorno(resultSet.getString("dataRetorno"));
				viagem.setTransporte(resultSet.getString("transporte"));
				
				
				viagem.setUsuario(usuario);
				
				
				
				viagens.add(viagem);
				
			}

			System.out.println("Consulta realizada com sucesso!");

			return viagens;

		} catch (SQLException e) {

			System.out.println("Falha na busca! " + e.getMessage());

			return null;

		}
		
		
		return null;
	}
	
	
	*/
	
}
