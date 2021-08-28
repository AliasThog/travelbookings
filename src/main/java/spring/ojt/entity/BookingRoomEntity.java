package spring.ojt.entity;

import java.time.LocalDate;
import java.util.Date;
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
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Future;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "bookingroom")
public class BookingRoomEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "NumberOfAdults")
	@NotNull(message = "NumberOfAdults is required")
	@Range(min = 0l, message = "Please select positive numbers Only")
	@Max(value = 10, message = "Must be equal or less than 10")
	@Min(value = 1, message = "Must have at least 1 Adults" )
	private Integer numOfAdults;

	@Column(name = "NumberOfChild")
	@NotNull(message = "NumberOfChild is required")
	@Range(min = 0, message = "Please select positive numbers Only")
	@Max(value = 10, message = "Must be equal or less than 10")
	@Min(value = 0)
	private Integer numOfChild;

	@Column(name = "BookingDate", updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date bookingDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "StartDate")
	@Future(message = "StartDate must be in the future")
	@NotNull(message = "startDate is required")
	private LocalDate startDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Future(message = "EndDate must be in the future")
	@Column(name = "EndDate")
	@NotNull(message = "EndDate is required")
	private LocalDate endDate;

	@Column(name = "Note")
	@Size(max = 300, message = "Allows Note 300 characters.")
	private String note;

	@Column(name = "quantity")
	@Range(min = 0l, message = "Please select positive numbers Only")
	@NotNull(message = "Quantity is required")
	@Max(value = 30, message = "Must be equal or less than 30")
	@Min(value = 1, message = "Must be equal or greater than 1")
	private Integer quantity;

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	@PrePersist
	protected void onCreate() {
		this.bookingDate = new Date();
	}

	@Column(name = "TotalPrice")
	private Long totalPrice;

	@Column(name = "cancel")
	private int cancel;

	@OneToMany(mappedBy = "bookingRoomEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<BookingDetailEntity> bookingDetailEntityList;

	public ServiceEntity getServiceEntity() {
		return serviceEntity;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setServiceEntity(ServiceEntity serviceEntity) {
		this.serviceEntity = serviceEntity;
	}



	public List<BookingDetailEntity> getBookingDetailEntityList() {
		return bookingDetailEntityList;
	}

	public void setBookingDetailEntityList(List<BookingDetailEntity> bookingDetailEntityList) {
		this.bookingDetailEntityList = bookingDetailEntityList;
	}

	public BookingRoomEntity() {
	}

	@ManyToOne
	@JoinColumn(name = "idService")
	private ServiceEntity serviceEntity;

	@ManyToOne
	@Valid
	@JoinColumn(name = "IdCustomer")
	private CustomersEntity customersEntity;

	//@OneToMany(mappedBy = "bookingRoomEntity")
	//private List<PaymentEntity> paymentEntityList;

	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	@Valid
	private PaymentEntity paymentEntity;
	
	@ManyToOne
	@JoinColumn(name = "IdBookingStatus")
	private BookingStatusEntity bookingStatusEntity;

	
	public PaymentEntity getPaymentEntity() {
		return paymentEntity;
	}

	public void setPaymentEntity(PaymentEntity paymentEntity) {
		this.paymentEntity = paymentEntity;
	}

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

	public Integer getNumOfAdults() {
		return numOfAdults;
	}

	public void setNumOfAdults(Integer numOfAdults) {
		this.numOfAdults = numOfAdults;
	}

	public Integer getNumOfChild() {
		return numOfChild;
	}

	public void setNumOfChild(Integer numOfChild) {
		this.numOfChild = numOfChild;
	}



	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

//	public int getTotalPrice() {
//		return totalPrice;
//	}
//
//	public void setTotalPrice(int totalPrice) {
//		this.totalPrice = totalPrice;
//	}

	public int getCancel() {
		return cancel;
	}





	public Long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}

	public void setCancel(int cancel) {
		this.cancel = cancel;
	}

	public BookingStatusEntity getBookingStatusEntity() {
		return bookingStatusEntity;
	}
	
	public void setBookingStatusEntity(BookingStatusEntity bookingStatusEntity) {
		this.bookingStatusEntity = bookingStatusEntity;
	}
	
}
