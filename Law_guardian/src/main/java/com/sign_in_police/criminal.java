package com.sign_in_police;

import org.springframework.web.multipart.MultipartFile;

public class criminal {
	public long id;
	public String fir_no;
	public String photo_path;
	public String name;
	public String dob;
	public String gender;
	public String age;
	public String address;
	public String crimes_committed;
	public String weapons_expert;
	public String birthmarks_scars;
	public String proofs;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFir_no() {
		return fir_no;
	}
	public void setFir_no(String fir_no) {
		this.fir_no = fir_no;
	}
	public  String getPhoto_path() {
		return photo_path;
	}
	
	public void setPhoto_path(String photo_path) {
		this.photo_path = photo_path;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCrimes_committed() {
		return crimes_committed;
	}
	public void setCrimes_committed(String crimes_committed) {
		this.crimes_committed = crimes_committed;
	}
	public String getWeapons_expert() {
		return weapons_expert;
	}
	public void setWeapons_expert(String weapons_expert) {
		this.weapons_expert = weapons_expert;
	}
	public String getBirthmarks_scars() {
		return birthmarks_scars;
	}
	public void setBirthmarks_scars(String birthmarks_scars) {
		this.birthmarks_scars = birthmarks_scars;
	}
	public String getProofs() {
		return proofs;
	}
	public void setProofs(String proofs) {
		this.proofs = proofs;
	}
}
