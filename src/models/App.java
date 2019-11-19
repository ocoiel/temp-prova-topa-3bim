package models;

//import java.util.List;

public class App {
	private int id;
	private String name;
	private String description;
	//private List<Plan> listPlan;
	private String listPlan;
	private String price;
	private String feature;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getListPlan() {
		return listPlan;
	}
	public void setListPlan(String string) {
		this.listPlan = string;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	
	
}
