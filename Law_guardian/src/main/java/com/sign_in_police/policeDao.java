package com.sign_in_police;

public interface policeDao {
	void save(polices pp);
	polices findByUsername(String email);
	polices findByemail(String email);
	boolean isValidUser(String username,String password);
	
	
	//boolean isUsernameTaken(String username);
	
	//polices findByUsername(String username);
	

}
