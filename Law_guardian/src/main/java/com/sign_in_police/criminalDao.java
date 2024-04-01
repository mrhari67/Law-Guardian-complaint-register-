package com.sign_in_police;

public interface criminalDao {
	void save(criminal c);
	criminal findByfir_no(String fir_no);


}
