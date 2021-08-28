package spring.ojt.entity;

import java.sql.Date;
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

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "bookingtour")
public class BookingTourEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "DatetoStart")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date DatetoStart;

	@Column(name = "amountAdults")
	@NotBlank(message = "AmountAdults is required")
	private int AmountAdults;

	@Column(name = "amountChilds")
	@NotBlank(message = "AmountChilds is required")
	private int AmountChilds;

	@Column(name = "cmnd")
	@NotBlank(message = "Cmnd is required")
	private int cmnd;

	@Column(name = "pricetour")
	@NotBlank(message = "Gia tien is required")
	private int priceTour;

	@Column(name = "Phone")
	@NotBlank(message = "Phone is required")
	private String phone;

	@Column(name = "hoten")
	@NotBlank(message = "Hoten is required")
	private String hoten;


	public BookingTourEntity() {

	}

	@ManyToOne
	@JoinColumn(name = "IdCustomer") 
	private CustomersEntity customersEntity;
	
	@ManyToOne
	@JoinColumn(name = "idTour")
	private TourEntity tourEntity;


	
	
	@ManyToOne
	@JoinColumn(name = "IdBookingStatus") 
	private BookingStatusEntity bookingStatusEntity;
	
	
	public CustomersEntity getCustomersEntity() {
		return customersEntity;
	}

	public void setCustomersEntity(CustomersEntity customersEntity) {
		this.customersEntity = customersEntity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDatetoStart() {
		return DatetoStart;
	}

	public void setDatetoStart(Date datetoStart) {
		DatetoStart = datetoStart;
	}

	public int getAmountAdults() {
		return AmountAdults;
	}

	public void setAmountAdults(int amountAdults) {
		AmountAdults = amountAdults;
	}

	public int getAmountChilds() {
		return AmountChilds;
	}

	public void setAmountChilds(int amountChilds) {
		AmountChilds = amountChilds;
	}

	public int getCmnd() {
		return cmnd;
	}

	public void setCmnd(int cmnd) {
		this.cmnd = cmnd;
	}

	public int getPriceTour() {
		return priceTour;
	}

	public void setPriceTour(int priceTour) {
		this.priceTour = priceTour;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public TourEntity getTourEntity() {
		return tourEntity;
	}

	public void setTourEntity(TourEntity tourEntity) {
		this.tourEntity = tourEntity;
	}

}