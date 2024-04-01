package com.sign_in_police.dao;

public class save_all {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
package com.sign_in_police.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;


import com.sign_in_police.policeDao;
import com.sign_in_police.policeRowMapper;
import com.sign_in_police.polices;

public class police_dao_impl {
	private JdbcTemplate template;  
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	} 
	
	@Override
	public void save(polices p){    
	    String sql="insert into user(username,email,password) values(?,?,?)";    
	   template.update(sql,p.getUsername(),p.getEmail(),p.getPassword());    
	}

	@Override
	
	/*public boolean isValidUser(String username, String password) {
		String sql="SELECT * FROM user WHERE username=? AND password=?";
		List <Object> result=template.query(sql,(rs,rowNum)->rs.getString("username"),username,password);
		return !result.isEmpty();
	}*/

	@Override
	public void sign_up(polices p) {
		// TODO Auto-generated method stub
		if(isUsernameTaken(p.username)) {
			throw new RuntimeException("username already exists");
		}
		if(isEmailTaken(p.getEmail())) {
			throw new RuntimeException("email already exists");
		}
		
	}

	//@Override
	/*public polices findByUsername(String username) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM user WHERE username=?";
		//Object[] args={username};
		List<polices> p=template.query(sql,new policeRowMapper(),username);
		return p.isEmpty()?null:p.get(0);
	}*/
	public polices  findByUsername(String username) {
		// TODO Auto-generated method stub
		System.out.println("value has called the function");
		
		String sql="SELECT COUNT( *) FROM user WHERE username=?";
		List<polices> p=template.query(sql,new policeRowMapper(),username);
		return p.isEmpty()? null:p.get(0);
			
	}

	/*@Override
	public boolean isUsernameTaken(String username) {
		// TODO Auto-generated method stub
		return police
		return false;
	}

	@Override
	public polices findByUsername(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public plices findByemail(String email) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}

<form:form action="insert_criminal_data" method="post" enctype="multipart/form-data" modelAttribute="criminal"  >
	  <div class="input-box">
        <input type="text" placeholder="enter the fir_no" name="fir_no" required>
      </div>
      <div>
      	<input type="file" placeholder="place the photo" name="photo" accept="image/*" required>
      </div>	
      <div class="input-box">
        <input type="text" placeholder="Enter criminal name" name ="name"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter dob of criminal" name="dob"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the gender of criminal"  name="gender"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the age of criminal" name="age" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the address of criminal" name="address" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the crimes" name="crimes_committed" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the weapons expert in" name="weapons_expert" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the birthmarks" name="birthmarks_scars" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the evidence" name="proofs" required>
      </div>
      <div class="input-box button">
        <input type="Submit" value="Insert">
      </div>
      
    </form:form>

