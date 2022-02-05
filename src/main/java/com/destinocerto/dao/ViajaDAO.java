package com.destinocerto.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.destinocerto.data.MySQLConnection;
import com.destinocerto.model.Viaja;

public class ViajaDAO {

	private static Connection connection = MySQLConnection.createConnection();
	private static String sql;

	public static void criar(Viaja viaja) {

		sql = "INSERT INTO viaja (idViagem, dataPartida, dataRetorno, transporte, destino, fk_destino_idDestino, fk_usuario_idUsuario) "
				+ "VALUES (null, ?, ?, ?, ?, ?, ?)";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, viaja.getDataPartida());
			preparedStatement.setString(2, viaja.getDataRetorno());
			preparedStatement.setString(3, viaja.getTransporte());
			preparedStatement.setString(4, viaja.getDestinoU());
			preparedStatement.setInt(5, viaja.getDestino().getIdDestino());
			preparedStatement.setInt(6, viaja.getUsuario().getIdUsuario());
			
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
	
}
