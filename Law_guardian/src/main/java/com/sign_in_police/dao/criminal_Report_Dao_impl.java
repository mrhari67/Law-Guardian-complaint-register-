package com.sign_in_police.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.sign_in_police.criminal_Report;
import com.sign_in_police.criminal_Report_Dao;

public class criminal_Report_Dao_impl implements criminal_Report_Dao {
	private JdbcTemplate template;  
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}

	@Override
	public void save(criminal_Report c) {
		// TODO Auto-generated method stub
		String sql="insert into crime_report(victim_name,place_where_crime_occured ,crime_report_to,identifying_marks_of_criminal,gender_of_criminal) values(?,?,?,?,?)";    
		template.update(sql,c.getVictim_name(),c.getPlace_where_crime_occured(),c.getCrime_report_to(),c.getIdentifying_marks_of_criminal(),c.getGender_of_criminal());   
	} 
}
