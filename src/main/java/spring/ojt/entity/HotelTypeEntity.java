package spring.ojt.entity;



import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="typeofhotel")
public class HotelTypeEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "description")
	private String description;
	
	
	
	public HotelTypeEntity() {
		
	}
	
	
	@OneToMany(mappedBy = "hotelTypeEntity")
	private List<HotelEntity> hotelEntityList;
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public List<HotelEntity> getHotelEntityList() {
		return hotelEntityList;
	}
	
	public void setHotelEntityList(List<HotelEntity> hotelEntityList) {
		this.hotelEntityList = hotelEntityList;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
}
