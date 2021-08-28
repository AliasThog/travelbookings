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
@Table(name = "promotion")
public class PromotionEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	@NotBlank(message = "Name Promotion is required")
	private String name;

	@Column(name = "percentage")
	private float percentage;

	public PromotionEntity() {

	}

	@OneToMany(mappedBy = "promotionEntity")
	private List<ServiceEntity> serviceEntityList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPercentage() {
		return percentage;
	}

	public void setPercentage(float percentage) {
		this.percentage = percentage;
	}

	public List<ServiceEntity> getServiceEntityList() {
		return serviceEntityList;
	}

	public void setServiceEntityList(List<ServiceEntity> serviceEntityList) {
		this.serviceEntityList = serviceEntityList;
	}

}
