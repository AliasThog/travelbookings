package spring.ojt.entity;

import java.util.List;

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
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tour")
public class TourEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "idtour")
	@NotBlank(message = "Name Hotel is required")
	@Size(min = 4, max = 20, message = "Allows IdTour between 4 and 20 characters.")
	@Pattern(regexp = "^[A-Za-z0-9]*", message = "Must not contain SPECIAL CHARACTERS AND SPACES ")
	private String idtour;

	@Column(name = "schedule")
	@Size(max = 20000, message = "AllowsSchedule Tour 20000 characters.")
	@NotBlank(message = " Schedule Tour is required")
	private String schedule;

	@Column(name = "nametour")
	@NotBlank(message = "Name Tour is required")
	@Size(max = 50, message = "Allows Name Hotel 50 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String nameTour;

	@Column(name = "vehicle") // phÆ°Æ¡ng tiá»‡n
	@NotBlank(message = " Vehicle Tour is required")
	@Size(max = 100, message = "Allows Vehicle Tour 100 characters.")
	private String vehicle;

	@Column(name = "description")
	@NotBlank(message = "Description is required")
	@Size(max = 500, message = "Allows Description 500 characters.")
	private String description;

	@Column(name = "address")
	@NotBlank(message = "Address Tour is required")
	@Size(max = 100, message = "Allows Address Tour 100 characters.")
	private String address;

	@Column(name = "evaluate")
	@NotBlank(message = "Evaluate is required")
	@Size(max = 300, message = "Allows Evaluate 300 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String evaluate;

	@Column(name = "feedback ")
	@Size(max = 1000, message = "Allows Evaluate 1000 characters.")
	private String feedback;

	@Column(name = "status ")
	@NotBlank(message = "Status is required")
	@Size(max = 1000, message = "Allows status 100 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String status;

	@Column(name = "descriptionchitiet")
	// @NotBlank(message = "Description is required")
	@Size(max = 2000, message = "Allows Description 500 characters.")
	private String descriptionChitiet;

	@Column(name = "chuongtrinhtour1")
	@Size(max = 2000, message = "Allows chuongtrinhtour1 500 characters.")
	private String chuongtrinhtour1;

	@Column(name = "chuongtrinhtour2")
	@Size(max = 2000, message = "Allows chuongtrinhtour2 500 characters.")
	private String chuongtrinhtour2;

	@Column(name = "chuongtrinhtour3")
	@Size(max = 2000, message = "Allows chuongtrinhtour3 500 characters.")
	private String chuongtrinhtour3;

	@Column(name = "chuongtrinhtour4")
	@Size(max = 2000, message = "Allows chuongtrinhtour4 500 characters.")
	private String chuongtrinhtour4;

	public String getDescriptionChitiet() {
		return descriptionChitiet;
	}

	public void setDescriptionChitiet(String descriptionChitiet) {
		this.descriptionChitiet = descriptionChitiet;
	}

	public String getChuongtrinhtour1() {
		return chuongtrinhtour1;
	}

	public void setChuongtrinhtour1(String chuongtrinhtour1) {
		this.chuongtrinhtour1 = chuongtrinhtour1;
	}

	public String getChuongtrinhtour2() {
		return chuongtrinhtour2;
	}

	public void setChuongtrinhtour2(String chuongtrinhtour2) {
		this.chuongtrinhtour2 = chuongtrinhtour2;
	}

	public String getChuongtrinhtour3() {
		return chuongtrinhtour3;
	}

	public void setChuongtrinhtour3(String chuongtrinhtour3) {
		this.chuongtrinhtour3 = chuongtrinhtour3;
	}

	public String getChuongtrinhtour4() {
		return chuongtrinhtour4;
	}

	public void setChuongtrinhtour4(String chuongtrinhtour4) {
		this.chuongtrinhtour4 = chuongtrinhtour4;
	}

	@Column(name = "urlimage1")
	private String urlImage1;

	@Column(name = "traighiem")
	private String traiNghiem;

	@Column(name = "traighiem1")
	private String traiNghiem1;

	@Column(name = "traighiem2")
	private String traiNghiem2;

	@Column(name = "tienich")
	private String tienIch;

	@Column(name = "tienich1")
	private String tienIch1;

	@Column(name = "tienich2")
	private String tienIch2;

	public String getTraiNghiem() {
		return traiNghiem;
	}

	public void setTraiNghiem(String traiNghiem) {
		this.traiNghiem = traiNghiem;
	}

	public String getTraiNghiem1() {
		return traiNghiem1;
	}

	public void setTraiNghiem1(String traiNghiem1) {
		this.traiNghiem1 = traiNghiem1;
	}

	public String getTraiNghiem2() {
		return traiNghiem2;
	}

	public void setTraiNghiem2(String traiNghiem2) {
		this.traiNghiem2 = traiNghiem2;
	}

	public String getTienIch() {
		return tienIch;
	}

	public void setTienIch(String tienIch) {
		this.tienIch = tienIch;
	}

	public String getTienIch1() {
		return tienIch1;
	}

	public void setTienIch1(String tienIch1) {
		this.tienIch1 = tienIch1;
	}

	public String getTienIch2() {
		return tienIch2;
	}

	public void setTienIch2(String tienIch2) {
		this.tienIch2 = tienIch2;
	}

	public TourEntity() {

	}

	@OneToMany(mappedBy = "tourEntity")
	public List<BookingTourEntity> bookingTourEntityList;

	@ManyToOne
	@JoinColumn(name = "iddiadiem")
	private AddressEntity addressEntity;

	@OneToMany(mappedBy = "tourEntity", fetch = FetchType.EAGER)
	public List<PriceTourPerDayEntity> priceTourPerDayEntityList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdtour() {
		return idtour;
	}

	public void setIdtour(String idtour) {
		this.idtour = idtour;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getNameTour() {
		return nameTour;
	}

	public void setNameTour(String nameTour) {
		this.nameTour = nameTour;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEvaluate() {
		return evaluate;
	}

	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUrlImage1() {
		return urlImage1;
	}

	public void setUrlImage1(String urlImage1) {
		this.urlImage1 = urlImage1;
	}

	public List<BookingTourEntity> getBookingTourEntityList() {
		return bookingTourEntityList;
	}

	public void setBookingTourEntityList(List<BookingTourEntity> bookingTourEntityList) {
		this.bookingTourEntityList = bookingTourEntityList;
	}

	public AddressEntity getAddressEntity() {
		return addressEntity;
	}

	public void setAddressEntity(AddressEntity addressEntity) {
		this.addressEntity = addressEntity;
	}

	public List<PriceTourPerDayEntity> getPriceTourPerDayEntityList() {
		return priceTourPerDayEntityList;
	}

	public void setPriceTourPerDayEntityList(List<PriceTourPerDayEntity> priceTourPerDayEntityList) {
		this.priceTourPerDayEntityList = priceTourPerDayEntityList;
	}

}