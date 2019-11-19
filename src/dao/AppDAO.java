package dao;

//import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

// import models.Plan;
import models.App;

public class AppDAO {
	
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	private ArrayList<App> listApps = new ArrayList<>();
	// private ArrayList<Plan> listPlans = new ArrayList<>();
	
	public AppDAO() {
		conn = new ConnectionFactory().getConexao();
	}
	
	public void addApp(App app) {
		String sql = "INSERT INTO app (name, description, plan, feature, price) VALUE (?,?,?,?,?)";
		try {

			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, app.getName());
			stmt.setString(2, app.getDescription());
			stmt.setString(3, app.getListPlan());
			stmt.setString(4, app.getFeature());
			stmt.setString(5, app.getPrice());
			
			stmt.execute();
			stmt.close();

		} catch (Exception erro) {
			throw new RuntimeException("addApp error: " + erro);
		}

	}
	
	public ArrayList<App> getAppByName(String name) {

		try {
			String sql = "SELECT * FROM app where name = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, name);

			rs = stmt.executeQuery();

			while (rs.next()) {

				App app = new App();

				app.setName(rs.getString("name"));
				app.setDescription(rs.getString("description"));
				app.setListPlan(rs.getString("plan"));
				app.setPrice(rs.getString("price"));
				app.setFeature(rs.getString("feature"));
				
				listApps.add(app);

			}

		} catch (Exception erro) {
			throw new RuntimeException("Erro getbyname: " + erro);
		}
		return listApps;
	}
}
