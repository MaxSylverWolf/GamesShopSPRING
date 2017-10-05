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
@Table(name="games")
public class Game implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private long id;	

	@NotBlank
	@Size(min=2, max=40)
	private String name;
	
	@NotBlank
	private String about;
	@NotBlank
	private String img;
	@Min(value=5)
	@Max(value=1000)
	@NumberFormat(pattern="#0.00")
	private Double price;
	
	@Past
	@Column(name="release_date")
	private Date releaseDate;
	
	@ManyToOne
	private GameType type;
	
	@ManyToMany(fetch=FetchType.EAGER)
	@Valid
	List<Accessory> accessories;

	public Game(){
		type = new GameType();
		accessories = new ArrayList<Accessory>();
	}
	
	public void setId(long id) {
		this.id = id;
	}
	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String ab) {
		this.about = ab;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String image) {
		this.img = image;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double pr) {
		this.price = pr;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date rdata) {
		this.releaseDate = rdata;
	}
	
	public void setType(GameType gtype) {
		this.type = gtype;
	}
	
	public GameType getType() {
		return type;
	}

	public List<Accessory> getAccessories() {
		return accessories;
	}

	public void setAccessories(List<Accessory> accessories) {
		this.accessories = accessories;
	}

}
