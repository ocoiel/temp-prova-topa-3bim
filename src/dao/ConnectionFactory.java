package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConexao(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/app_prova?useSSL=false","root","");
			
		}catch (Exception erro) {
			throw new RuntimeException("Connection to Drive do not work!: "+erro);
		}
	}

}
