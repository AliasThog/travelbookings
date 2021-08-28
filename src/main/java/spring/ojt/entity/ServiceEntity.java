package spring.ojt.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "service")
public class ServiceEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "nameservice")
	@NotBlank(message = "Name is require")
	private String nameService;

	@Column(name = "mota")
	private String mota;
	
	@Column(name = "price")
	private double price;

	public ServiceEntity() {

	}

	
	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}


	@OneToMany(mappedBy = "serviceEntity",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	private List<BookingRoomEntity> bookingRoomEntityList;

	@ManyToOne
	@JoinColumn(name = "idpromotion")
	private PromotionEntity promotionEntity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameService() {
		return nameService;
	}

	public void setNameService(String nameService) {
		this.nameService = nameService;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<BookingRoomEntity> getBookingRoomEntityList() {
		return bookingRoomEntityList;
	}

	public void setBookingRoomEntityList(List<BookingRoomEntity> bookingRoomEntityList) {
		this.bookingRoomEntityList = bookingRoomEntityList;
	}

	public PromotionEntity getPromotionEntity() {
		return promotionEntity;
	}

	public void setPromotionEntity(PromotionEntity promotionEntity) {
		this.promotionEntity = promotionEntity;
	}

}
