package webditor.datatransfer;

import java.util.ArrayList;

public class Customer {
	private String email = "";
	private String password = "";
	private ArrayList<Project> arrProject;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ArrayList<Project> getArrProject() {
		return arrProject;
	}

	public void setArrProject(ArrayList<Project> arrProject) {
		this.arrProject = arrProject;
	}

	public Customer(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public Customer(String email, String password, ArrayList<Project> arrProject) {
		
		this.email = email;
		this.password = password;
		this.arrProject = arrProject;
	}

}
