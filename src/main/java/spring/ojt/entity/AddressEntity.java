package spring.ojt.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "address")
public class AddressEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	
	@Column(name = "address")
	@NotBlank(message = "NameAddress is required")
	private String nameAddress;

	@Column(name = "description")
	@NotBlank(message = "Description is required")
	private String description;

	public AddressEntity() {
			
	}

	@Column(name = "UrlImageAddress")
	private String urlImageAddress;
	
	
	public String getUrlImageAddress() {
		return urlImageAddress;
	}

	public void setUrlImageAddress(String urlImageAddress) {
		this.urlImageAddress = urlImageAddress;
	}

	@OneToMany(mappedBy = "addressEntity")
	private List<HotelEntity> hotelEntityList;
	
	
	@OneToMany(mappedBy = "addressEntity")
	private List<TourEntity> tourEntityList;

	public List<TourEntity> getTourEntityList() {
		return tourEntityList;
	}

	public void setTourEntityList(List<TourEntity> tourEntityList) {
		this.tourEntityList = tourEntityList;
	}

	@ManyToOne
	@JoinColumn(name = "IdCity")
	private CityEntity cityEntity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameAddress() {
		return nameAddress;
	}

	public void setNameAddress(String nameAddress) {
		this.nameAddress = nameAddress;
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

	public CityEntity getCityEntity() {
		return cityEntity;
	}

	public void setCityEntity(CityEntity cityEntity) {
		this.cityEntity = cityEntity;
	}





	



}
