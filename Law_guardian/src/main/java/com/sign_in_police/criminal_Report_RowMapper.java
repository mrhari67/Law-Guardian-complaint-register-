package com.sign_in_police;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class criminal_Report_RowMapper implements RowMapper<criminal_Report> {

	@Override
	public criminal_Report mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		criminal_Report p=new criminal_Report();
		
		p.setVictim_name(rs.getString("victim_name"));
		p.setPlace_where_crime_occured(rs.getString("place_where_crime_occured"));
		p.setIdentifying_marks_of_criminal(rs.getString("identifying_marks_of_criminal"));
		return p;
	}

}
