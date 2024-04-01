package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.sign_in_police.criminal;
import com.sign_in_police.criminalDao;
import com.sign_in_police.criminal_Report;
import com.sign_in_police.criminal_Report_Dao;
import com.sign_in_police.policeDao;
import com.sign_in_police.polices;

@Controller
@MultipartConfig 
public class appController {
	
	//jdbc template function
	private final JdbcTemplate jdbcTemplate;
	@Autowired
	public appController(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate=jdbcTemplate;
	}
	
	@Autowired
	private policeDao policedao;
	@Autowired
	private criminalDao criminaldao;
	@Autowired
	private criminal_Report_Dao criminalreportdao;
	private static final String UPLOAD_DIRECTORY ="/images";
	
	//fetching the homepage of the website
	@RequestMapping("/")
	public String homepage()  
    {  
        return "homepage";  
    }  
	
	//sign in police navigation page
	@GetMapping("/sign_in_police")
	public String show_signin_form(Model model) {
		model.addAttribute("pp",new polices());
		System.out.println("sign in police page fetched");
		return "Sign_in_police";
	}
	
	//signing the user
	@RequestMapping(value="/sign_in_police_register",method=RequestMethod.POST)
	public String signup(@ModelAttribute("pp") polices pp,Model model) {
		if( isValidPassword(pp.getPassword())==false) {
			model.addAttribute("message","Password should contain at least 8 characters and at most 20 characters, one digit, one upper case alphabet, one special character");
			return "Sign_in_police";
		}
		if(pp.getPassword()==null || !pp.getPassword().equals(pp.getConfirmPassword())) {
			model.addAttribute("message","password do not match");
			return "Sign_in_police";
			
		}
		polices existinguserbyname=policedao.findByUsername(pp.getUsername());
		polices existinguserbyemail=policedao.findByemail(pp.getEmail());
		System.out.println(existinguserbyname);
		System.out.println(existinguserbyemail);
		if(existinguserbyname!=null ) {
			model.addAttribute("message","username already exist try another");
			return "Sign_in_police";
		}
		if(existinguserbyemail!=null) {
			model.addAttribute("message","email already exist try another");
			return "Sign_in_police";
		}
		
		
		
		policedao.save(pp);
		System.out.println("Police registered successfully");
		return "login_police";
		
		
	}
	
	// password validator
	private boolean isValidPassword(String password) {
		String regex = "^(?=.*[0-9])"
                + "(?=.*[a-z])(?=.*[A-Z])"
                + "(?=.*[@#$%^&+=])"
                + "(?=\\S+$).{8,20}$";

		

			// Compile the ReGex
		Pattern p = Pattern.compile(regex);
			
			 // If the password is empty
			 // return false
		if (password == null) {
			     return false;
		}
			
			 // Pattern class contains matcher() method
			 // to find matching between given password
			 // and regular expression.
		Matcher m = p.matcher(password);
			
			 // Return if the password
			 // matched the ReGex
			return m.matches();
	   

	}

	//getting log in page
	@GetMapping("/log_in_police")
	public String showLogiForm() {
		System.out.println("login form requested");
		return "login_police";
	}
	
	//validating log in credentials
	@RequestMapping(value="/login_police" ,method=RequestMethod.POST)
	public String processLogin(@ModelAttribute("pp") polices pp,@RequestParam String username,@RequestParam String password,Model model) {
		if(policedao.isValidUser(username, password)) {
			model.addAttribute("message","Logged in successful");
			String sql="SELECT * FROM criminal";
			List <criminal> criminalList=jdbcTemplate.query(sql, (ResultSet resultSet,int rowNum)->{
				criminal data=new criminal();
				data.setFir_no(resultSet.getString("fir_no"));
				data.setName(resultSet.getString("name"));
				data.setGender(resultSet.getString("gender"));
				System.out.println(data.getFir_no());
				System.out.println(data.getName());
				
				return data;
			});
			//SELECT  * FROM user WHERE username=?
			String sql2="SELECT * FROM user WHERE username='"+username+"'";
			List <polices> credentials=jdbcTemplate.query(sql2, (ResultSet resultSet,int rowNum)->{
				polices d=new polices();
				d. setUsername(resultSet.getString("username"));
				d.setEmail(resultSet.getString("email"));
				
				System.out.println(d.getUsername());
				System.out.println(d.getEmail());
				
				return d;
			});
			
			String sql3="SELEct * FROM crime_report";
			List <criminal_Report> criminal_Report_List=jdbcTemplate.query(sql3, (ResultSet resultSet,int rowNum)->{
				criminal_Report data=new criminal_Report();
				data.setVictim_name(resultSet.getString("victim_name"));
				data.setPlace_where_crime_occured(resultSet.getString("place_where_crime_occured"));
				data.setIdentifying_marks_of_criminal(resultSet.getString("identifying_marks_of_criminal"));
				
				
				return data;
			});
			for(polices c:credentials) {
				System.out.println(c.getUsername());
				System.out.println(c.getEmail());
				
				model.addAttribute("username",c.getUsername());
				model.addAttribute("email",c.getEmail());
			}
			
			model.addAttribute("criminal_Report_List",criminal_Report_List);
			model.addAttribute("criminalList",criminalList);
			
			return "police_home";
			
		}
		else {
			model.addAttribute("message","Invalid username or password");
			return "login_police";
		}
		
	}
			
	// fetching the criminal page
	@RequestMapping("/insert_criminal")
	public String insert_criminal(){
		
		return "Insert_fir";
	}
	
	//inserting the criminal data
	@PostMapping(value="/insert_criminal_data" )
	@ResponseBody
	public ModelAndView upload(@ModelAttribute("cc") criminal cc,@RequestParam CommonsMultipartFile photo,HttpSession session) throws Exception{
			
			criminal existingfir_no=criminaldao.findByfir_no(cc.getFir_no());
			if(existingfir_no!=null) {
				
				 return new ModelAndView("Insert_fir","message","Fir no already exist try another fir no which does");
				
			}
			String ppp="C:\\Users\\MH00993361\\Documents\\java_projects\\Law_guardian\\src\\main\\resources\\static\\images\\";
			ServletContext context = session.getServletContext();  
		    String path = context.getRealPath(UPLOAD_DIRECTORY); 
		    System.out.println(ppp);
		    String filename = photo.getOriginalFilename(); 
		    String pp=ppp+filename;        
		    byte[] bytes = photo.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(pp));
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		    cc.setPhoto_path(filename);
		    criminaldao.save(cc);
		    

		    System.out.println("fir inserted succesfully");
        return new ModelAndView("login_police");  
    } 
	
	//searching criminal
	@RequestMapping(value="/search_criminal" ,method=RequestMethod.POST)
	public String search_criminal(@RequestParam("fir_no") String fir_no,Model model,@RequestParam("username") String username) {
		System.out.println("this is new case");
		String sql="SELECT * FROM criminal WHERE fir_no='"+fir_no+"'";
		List <criminal> criminalList=jdbcTemplate.query(sql, (ResultSet resultSet,int rowNum)->{
			criminal data=new criminal();
			data.setFir_no(resultSet.getString("fir_no"));
			data.setPhoto_path(resultSet.getString("photo_path"));
			data.setName(resultSet.getString("name"));
			data.setDob(resultSet.getString("dob"));
			data.setGender(resultSet.getString("gender"));
			data.setAge(resultSet.getString("age"));
			data.setAddress(resultSet.getString("address"));
			data.setCrimes_committed(resultSet.getString("crimes_committed"));
			data.setWeapons_expert(resultSet.getString("weapons_expert"));
			data.setBirthmarks_scars(resultSet.getString("birthmarks_scars"));
			data.setProofs(resultSet.getString("proofs"));
			System.out.println(data.getFir_no());
			System.out.println(data.getName());
			
			return data;
		});
		System.out.println(sql);
		model.addAttribute("username",username);
		model.addAttribute("criminalList",criminalList);
		return "search_criminal";
		
		
		
	}
	
	//fetching the update  criminal page
	@RequestMapping(value="/update_criminal_page" ,method=RequestMethod.POST)
	public String update_criminal_page(@RequestParam("fir_no") String fir_no,Model model,String username) {
		System.out.println("this is new case");
		String sql="SELECT * FROM criminal WHERE fir_no='"+fir_no+"'";
		List <criminal> criminalList=jdbcTemplate.query(sql, (ResultSet resultSet,int rowNum)->{
			criminal data=new criminal();
			data.setFir_no(resultSet.getString("fir_no"));
			data.setPhoto_path(resultSet.getString("photo_path"));
			data.setName(resultSet.getString("name"));
			data.setDob(resultSet.getString("dob"));
			data.setGender(resultSet.getString("gender"));
			data.setAge(resultSet.getString("age"));
			data.setAddress(resultSet.getString("address"));
			data.setCrimes_committed(resultSet.getString("crimes_committed"));
			data.setWeapons_expert(resultSet.getString("weapons_expert"));
			data.setBirthmarks_scars(resultSet.getString("birthmarks_scars"));
			data.setProofs(resultSet.getString("proofs"));
			System.out.println(data.getFir_no());
			System.out.println(data.getName());
			
			return data;
		});
		System.out.println(sql);
		model.addAttribute("username",username);
		model.addAttribute("criminalList",criminalList);
		System.out.println("Data updated successfully");
		return "update_fir";
	}
	
	//actual updating the criminal
	@RequestMapping(value="/update_criminal" ,method=RequestMethod.POST)
	public String update_criminal(@RequestParam("fir_no") String fir_no,Model model,@RequestParam("crimes_committed")String crimes_committed,
			@RequestParam("weapons_expert") String weapons_expert
			,@RequestParam("birthmarks_scars")String birthmarks_scars,
			 @RequestParam("proofs") String proofs) {
		crimes_committed = " ".concat(crimes_committed);
		weapons_expert=" ".concat(weapons_expert);
		birthmarks_scars=" ".concat(birthmarks_scars);
		proofs=" ".concat(proofs);
		
		if(crimes_committed!=null) {
			String sql="UPDATE criminal SET crimes_committed =CONCAT(crimes_committed ,'"+crimes_committed+"')WHERE fir_no="+fir_no +"";
			jdbcTemplate.execute(sql);
			System.out.println("crimes has been updated");
		}
		if(weapons_expert!=null) {
			String sql="UPDATE criminal SET weapons_expert =CONCAT(weapons_expert ,'"+weapons_expert+"')WHERE fir_no="+fir_no +"";
			jdbcTemplate.execute(sql);
			System.out.println("weapons has been updated");
		}
		if(birthmarks_scars!=null) {
			String sql="UPDATE criminal SET birthmarks_scars =CONCAT(birthmarks_scars ,'"+birthmarks_scars+"')WHERE fir_no="+fir_no +"";
			jdbcTemplate.execute(sql);
			System.out.println("scars has been updated");
		}
		
		if(proofs!=null) {
			String sql="UPDATE criminal SET proofs =CONCAT(proofs ,'"+proofs+"')WHERE fir_no="+fir_no +"";
			jdbcTemplate.execute(sql);
			System.out.println("proofs has been updated");
		}
		String sql="SELECT * FROM criminal";
		List <criminal> criminalList=jdbcTemplate.query(sql, (ResultSet resultSet,int rowNum)->{
			criminal data=new criminal();
			data.setFir_no(resultSet.getString("fir_no"));
			data.setName(resultSet.getString("name"));
			data.setGender(resultSet.getString("gender"));
			System.out.println(data.getFir_no());
			System.out.println(data.getName());
			
			return data;
		});
		model.addAttribute("criminalList",criminalList);
		return "police_home";
	}
	
	//logout
	@RequestMapping(value="/log_out",method = RequestMethod.GET)
	public String log_out(HttpServletRequest request,HttpServletResponse response) {
	
          	
          
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            
           
		return "redirect:/";
	}
	
	//fetching the change password page
	@RequestMapping(value="/change_pswd_page")
	public String change_pswd_page(Model model,@RequestParam("username") String username) {
		
		model.addAttribute("username",username);
		return "change_password";
	}
	
	//Actual changing the password
	@RequestMapping(value="/change_pswd")
	public String change_pswd(Model model,@RequestParam("username")String username,
			@RequestParam("password") String password,
			@RequestParam ("confirmpassword") String confirmpassword) {
		
		
		if( isValidPassword(password)==false) {
			model.addAttribute("message","Password should contain at least 8 characters and at most 20 characters, one digit, one upper case alphabet, one special character");
			return "change_password";
		}
		if(password==null || !password.equals(confirmpassword)) {
			model.addAttribute("message","password do not match");
			return "change_password";
			
		}
		String sql ="UPDATE user SET password = '"+password+"'WHERE  username = '"+username+"'";
		jdbcTemplate.execute(sql);
		System.out.println("password changed successfully");
		return "login_police";
	}
	
	//Reporting a crime for the public
	@RequestMapping(value="/crime_report" ,method=RequestMethod.POST)
	public String crime_report(@ModelAttribute("pp") criminal_Report pp) {
		criminalreportdao.save(pp);
		System.out.println("new case has been received");
		return "homepage";
	}
	
	//Viewing victim details
	@RequestMapping(value="/search_victim" ,method=RequestMethod.POST)
	public String search_victim(@RequestParam("victim_name") String victim_name,Model model) {
		
		String sql3="SELECT * FROM crime_report WHERE victim_name='"+victim_name+"'";
		List <criminal_Report> criminal_Report_List=jdbcTemplate.query(sql3, (ResultSet resultSet,int rowNum)->{
			criminal_Report data=new criminal_Report();
			data.setVictim_name(resultSet.getString("victim_name"));
			data.setPlace_where_crime_occured(resultSet.getString("place_where_crime_occured"));
			data.setCrime_report_to(resultSet.getString("crime_report_to"));
			data.setIdentifying_marks_of_criminal(resultSet.getString("identifying_marks_of_criminal"));
			data.setGender_of_criminal(resultSet.getString("gender_of_criminal"));
			System.out.println(data.getVictim_name());
			return data;
		});
		model.addAttribute("criminal_Report_List",criminal_Report_List);
		return "victim_details";
	}
}  

