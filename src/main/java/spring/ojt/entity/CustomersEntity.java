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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "customers")
public class CustomersEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "fullname")
	@NotBlank(message = "Name is required")
	private String fullName;

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@NotNull(message = "DoB is required")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Past(message = "DoB must in the past")
	private LocalDate dob;

	@NotNull(message = "Please choose gender")
	private Integer gender;

	@Column(name = "address")
	@NotBlank(message = " Address is required")
	private String address;

	@Column(name = "phone")
	@NotBlank(message = " Phone is required")
	@Pattern(regexp = "^[0-9]*", message = "PhoneNumber was not allowed to contain SPECIAL CHARACTERS AND SPACES ") 
	@Size(min = 10, max = 10, message = "Allows PhoneNumber 10 characters.")
	private String phone;

	@Column(name = "email")
	@NotBlank(message = "Email is required")
	@Email(message = "Format email is incorrect")
	private String mail;

//	@Column(name = "zipcode")
//	@NotBlank(message = " ZipCode is required")
//	private String zipCode;

//	@Column(name = "city")
//	@NotBlank(message = " City is required")
//	private String city;

//	@Column(name = "state")
//	@NotBlank(message = " State is required")
//	private String state;

//	@Column(name = "country")
//	@NotBlank(message = " Country is required")
//	private String country;

//	@Column(name = "loginid")
//	@NotBlank(message = " loginId is required")
//	private String loginId;

//	@Column(name = "password")
//	@NotBlank(message = " Password is required")
//	private String password;

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Column(name = "status")
//	@NotBlank(message = " Status is required")
	private String status;

	public CustomersEntity() {

	}

	
	
	@OneToMany(mappedBy = "customersEntity", cascade = CascadeType.ALL)
	private List<BookingRoomEntity> bookingRoomEntityList;

	@OneToMany(mappedBy = "customersEntity")
	private List<BookingTourEntity> bookingTourEntityList;

	public List<BookingRoomEntity> getBookingRoomEntityList() {
		return bookingRoomEntityList;
	}

	public void setBookingRoomEntityList(List<BookingRoomEntity> bookingRoomEntityList) {
		this.bookingRoomEntityList = bookingRoomEntityList;
	}

//	@OneToOne(cascade = { CascadeType.ALL })
	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	@Valid
	private UserEntity userEntity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

//	public String getMail() {
//		return mail;
//	}
//
//	public void setMail(String mail) {
//		this.mail = mail;
//	}
//
//	public String getPassword() {
//		return password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<BookingTourEntity> getBookingTourEntityList() {
		return bookingTourEntityList;
	}

	public void setBookingTourEntityList(List<BookingTourEntity> bookingTourEntityList) {
		this.bookingTourEntityList = bookingTourEntityList;
	}

	public UserEntity getUserEntity() {
		return userEntity;
	}

	public void setUserEntity(UserEntity userEntity) {
		this.userEntity = userEntity;
	}

}
