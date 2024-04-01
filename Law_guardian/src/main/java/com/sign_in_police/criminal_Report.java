package com.sign_in_police;

public class criminal_Report {
	public long id;
	public String victim_name;
	public String place_where_crime_occured;
	public String crime_report_to;
	public String identifying_marks_of_criminal;
	public String gender_of_criminal;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getVictim_name() {
		return victim_name;
	}
	public void setVictim_name(String victim_name) {
		this.victim_name = victim_name;
	}
	public String getPlace_where_crime_occured() {
		return place_where_crime_occured;
	}
	public void setPlace_where_crime_occured(String place_where_crime_occured) {
		this.place_where_crime_occured = place_where_crime_occured;
	}
	public String getCrime_report_to() {
		return crime_report_to;
	}
	public void setCrime_report_to(String crime_report_to) {
		this.crime_report_to = crime_report_to;
	}
	public String getIdentifying_marks_of_criminal() {
		return identifying_marks_of_criminal;
	}
	public void setIdentifying_marks_of_criminal(String identifying_marks_of_criminal) {
		this.identifying_marks_of_criminal = identifying_marks_of_criminal;
	}
	public String getGender_of_criminal() {
		return gender_of_criminal;
	}
	public void setGender_of_criminal(String gender_of_criminal) {
		this.gender_of_criminal = gender_of_criminal;
	}
}
