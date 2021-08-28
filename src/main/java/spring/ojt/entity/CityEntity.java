package spring.ojt.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "City")
public class CityEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "nameCity")
	private String nameCity;

	@Column(name = "wards")
	private String wards;

	@Column(name = "description")
	private String description;


	@Column(name = "Districtan")
	private String district;

	@Column(name = "NameProvince")
	private String nameProvince;
	
	public String getNameCity() {
		return nameCity;
	}

	public void setNameCity(String nameCity) {
		this.nameCity = nameCity;
	}



	
	
	public CityEntity() {

	}

	
	@OneToMany(mappedBy = "cityEntity", fetch = FetchType.EAGER)
	private List<AddressEntity> addressEntityList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWards() {
		return wards;
	}

	public void setWards(String wards) {
		this.wards = wards;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}



//	public String getUrlimage() {
//		return urlimage;
//	}
//
//	public void setUrlimage(String urlimage) {
//		this.urlimage = urlimage;
//	}


	public List<AddressEntity> getAddressEntityList() {
		return addressEntityList;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getNameProvince() {
		return nameProvince;
	}

	public void setNameProvince(String nameProvince) {
		this.nameProvince = nameProvince;
	}

	public void setAddressEntityList(List<AddressEntity> addressEntityList) {
		this.addressEntityList = addressEntityList;
	}


}
