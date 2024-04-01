package com.sign_in_police.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.sign_in_police.criminal;
import com.sign_in_police.criminalDao;
import com.sign_in_police.criminalRowMapper;

public class criminal_dao_impl implements criminalDao {
	
	private JdbcTemplate template;  
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	} 

	@Override
	public void save(criminal c) {
		// TODO Auto-generated method stub
		String sql="insert into criminal(fir_no,photo_path,name,dob,gender,age,address,crimes_committed,weapons_expert,birthmarks_scars,proofs) values(?,?,?,?,?,?,?,?,?,?,?)";
		template.update(sql,c.getFir_no(),c.getPhoto_path(),c.getName(),c.getDob(),c.getGender(),c.getAge(),c.getAddress(),c.getCrimes_committed(),c.getWeapons_expert(),c.getBirthmarks_scars(),c.getProofs());
		System.out.println("Criminal Data inserted successfully");
		
	}

	@Override
	public criminal findByfir_no(String fir_no) {
		// TODO Auto-generated method stub
		String sql="SELECT  * FROM criminal WHERE fir_no=?";
		
		List<criminal> p=template.query(sql,new criminalRowMapper(),fir_no);
		System.out.println("till here it's working");
		return  p.isEmpty()? null:p.get(0);
		
	}

	

}
