package webditor.dataaccess;

import webditor.datatransfer.Customer;
import webditor.datatransfer.Project;

public interface WebditorDAO {
	
	/**
	 * joinUser method
	 */
	boolean joinUser(Customer customer);
	
	
	/**
	 * login method
	 * @return 
	 */
	 boolean login(String email,String password);
	
	 
	/**
	 * newProject method
	 */
	void newProject(Project proejct);
	

}
