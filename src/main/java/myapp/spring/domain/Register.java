package myapp.spring.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="registers")
public class Register implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private long id;	

	@NotBlank
	private String login;	
	@NotBlank
	private String password;
	@NotBlank
	private String name;
	@NotBlank
	private String surname;
	@NotBlank
	private String street;
	@NotBlank
	private String zipcode;	
	@NotBlank
	private String city;
	
	public Register(){

	}
	
	public void setId(long id) {
		this.id = id;
	}
	public long getId() {
		return id;
	}

	public String getLogin() {
		return login;
	}
	public void setLogin(String log) {
		this.login = log;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String pass) {
		this.password = pass;
	}	

	public String getName() {
		return name;
	}
	public void setName(String nam) {
		this.name = nam;
	}	
	
	public String getSurname() {
		return surname;
	}
	public void setSurname(String sur) {
		this.surname = sur;
	}
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String stre) {
		this.street = stre;
	}	
	
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zip) {
		this.zipcode = zip;
	}	

	public String getCity() {
		return city;
	}
	public void setCity(String cit) {
		this.city = cit;
	}

	public boolean checkUser(String login2, String password2) {
		this.login = login2;
		this.password = password2;
		return true;
	}

	
}
