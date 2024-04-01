package com.sign_in_police;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;





public class policeRowMapper implements RowMapper<polices> {

	@Override
	public polices mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		// TODO Auto-generated method stub
		polices p=new polices();
		p.setUsername(rs.getString("username"));
		p.setPassword(rs.getString("password"));
		p.setEmail(rs.getString("email"));
		return p;
	}

}
