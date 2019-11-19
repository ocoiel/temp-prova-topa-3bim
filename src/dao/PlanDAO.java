package dao;

//import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;

import models.App;
import models.Plan;

public class PlanDAO {
	private Connection conn;
	private PreparedStatement stmt;
	
	public PlanDAO() {
		conn = new ConnectionFactory().getConexao();
	}
	
	public void addPlan(App app, Plan plan) {
		String sql = "INSERT INTO app (name, description, plan) VALUE (?,?,?)";
		try {

			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, app.getName());
			stmt.setString(2, app.getDescription());
			stmt.setString(3, app.getListPlan());
			
			stmt.execute();
			stmt.close();

		} catch (Exception erro) {
			// TODO: handle exception
			throw new RuntimeException("addApp error: " + erro);
		}

	}
}
