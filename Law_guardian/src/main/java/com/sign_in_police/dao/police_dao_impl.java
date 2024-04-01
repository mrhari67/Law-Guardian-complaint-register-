package com.sign_in_police.dao;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sign_in_police.policeDao;
import com.sign_in_police.policeRowMapper;
import com.sign_in_police.polices;

public class police_dao_impl implements policeDao {
private JdbcTemplate template;  
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	} 
	@Override
	public void save(polices p) {
		// TODO Auto-generated method stub
		 String sql="insert into user(username,email,password) values(?,?,?)";    
		 template.update(sql,p.getUsername(),p.getEmail(),p.getPassword());    
		
	}

	
	@Override
	public polices findByUsername(String username) {
		// TODO Auto-generated method stub
		String sql="SELECT  * FROM user WHERE username=?";
	
			List<polices> p=template.query(sql,new policeRowMapper(),username);
			System.out.println("till here it's working");
			return  p.isEmpty()? null:p.get(0);
		
		
		
	}

	@Override
	public polices findByemail(String email) {
		// TODO Auto-generated method stub
		String sql="SELECT  * FROM user WHERE email=?";
		List<polices> p=template.query(sql,new policeRowMapper(),email);
		System.out.println("till here it's working");
		return  p.isEmpty()? null:p.get(0);
		
	
	}

	@Override
	public boolean isValidUser(String username, String password) {
		String sql="SELECT * FROM user WHERE username=? AND password=?";
		List <Object> result=template.query(sql,(rs,rowNum)->rs.getString("username"),username,password);
		return !result.isEmpty();
		// TODO Auto-generated method stub
		
	}
	
}
