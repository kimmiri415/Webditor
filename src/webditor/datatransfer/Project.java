package webditor.datatransfer;

import java.sql.Date;
import java.util.ArrayList;

public class Project {
	private ArrayList<Page> arrPage;
	private String regDate;
	private String name;
	private String id;

	public ArrayList<Page> getArrPage() {
		return arrPage;
	}

	public void setArrPage(ArrayList<Page> arrPage) {
		this.arrPage = arrPage;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Project(String name, String id) {
		this.name = name;
		this.id = id;

	}

	public Project(ArrayList<Page> arrPage, String regDate, String name, String id) {
		super();
		this.arrPage = arrPage;
		this.regDate = regDate;
		this.name = name;
		this.id = id;
	}

}
