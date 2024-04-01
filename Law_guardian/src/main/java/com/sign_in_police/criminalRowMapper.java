package com.sign_in_police;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class criminalRowMapper implements RowMapper<criminal> {
	

	@Override
	public criminal mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		criminal p=new criminal();
		p.setFir_no(rs.getString("fir_no"));
		p.setName(rs.getString("name"));
		p.setAge(rs.getString("age"));
		return p;
		
	}
	

}
