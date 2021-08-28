package spring.ojt.entity;

import java.util.ArrayList;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "room")
public class RoomEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	@NotBlank(message = "Name Room is required")
	@Size(max = 30, message = "Allows Name Room 30 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String name;

	@Column(name = "convenient")
	@Size(max = 300, message = "Allows Address Hotel 300 characters.")
	@NotBlank(message = "Convenient is required")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String convenient;

	@Column(name = "area")
	@Size(max = 100, message = "Allows Address Hotel 100 characters.")
	@NotBlank(message = "Area is required")
	private String area;

	@Column(name = "description")
	@NotBlank(message = "Description is required")
	@Size(max = 1000, message = "Allows Description 1000 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String description;

	@Column(name = "BedType")
	@NotBlank(message = "Bed Type is required")
	@Size(max = 100, message = "Allows Description 100 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String bedType;

	@Column(name = "description1")
	@NotBlank(message = "Description is required")
	@Size(max = 1000, message = "Allows Description 1000 characters.")
	private String description1;

	@Column(name = "description2")
	@NotBlank(message = "Description is required")
	@Size(max = 1000, message = "Allows Description 1000 characters.")
	private String description2;

	public String getDescription1() {
		return description1;
	}

	public void setDescription1(String description1) {
		this.description1 = description1;
	}

	public String getDescription2() {
		return description2;
	}

	public void setDescription2(String description2) {
		this.description2 = description2;
	}

	@Column(name = "RoomPrice")
	@NotNull(message = "Room Price is required")
	private Integer roomPrice;

	@Column(name = "UrlImageRoom")
	private String urlImageRoom;

	public String getUrlImageRoom() {
		return urlImageRoom;
	}

	public void setUrlImageRoom(String urlImageRoom) {
		this.urlImageRoom = urlImageRoom;
	}
	
	public Integer getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(Integer roomPrice) {
		this.roomPrice = roomPrice;
	}

	public RoomEntity() {

	}

	@OneToMany(mappedBy = "bookingRoomEntity", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<BookingDetailEntity> bookingDetailEntityList;

	
	
	
	public void add(BookingDetailEntity bookingDetail) {
		if (bookingDetailEntityList == null) {
			bookingDetailEntityList = new ArrayList<BookingDetailEntity>();
		}
		bookingDetailEntityList.add(bookingDetail);
		bookingDetail.setRoomEntity(this);
	}

	

	
	
	
	@ManyToOne()
	@JoinColumn(name = "IdHotel")
	private HotelEntity hotelEntity;

	public List<BookingDetailEntity> getBookingDetailEntityList() {
		return bookingDetailEntityList;
	}

	public void setBookingDetailEntityList(List<BookingDetailEntity> bookingDetailEntityList) {
		this.bookingDetailEntityList = bookingDetailEntityList;
	}

	public HotelEntity getHotelEntity() {
		return hotelEntity;
	}

	public void setHotelEntity(HotelEntity hotelEntity) {
		this.hotelEntity = hotelEntity;
	}

	@ManyToOne
	@JoinColumn(name = "IdRoomStatus")
	private RoomStatusEntity roomStatusEntity;

	@ManyToOne
	@JoinColumn(name = "IdRoomType")
	private RoomTypeEntity roomTypeEntity;

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

	public String getConvenient() {
		return convenient;
	}

	public void setConvenient(String convenient) {
		this.convenient = convenient;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBedType() {
		return bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public RoomStatusEntity getRoomStatusEntity() {
		return roomStatusEntity;
	}

	public void setRoomStatusEntity(RoomStatusEntity roomStatusEntity) {
		this.roomStatusEntity = roomStatusEntity;
	}

	public RoomTypeEntity getRoomTypeEntity() {
		return roomTypeEntity;
	}

	public void setRoomTypeEntity(RoomTypeEntity roomTypeEntity) {
		this.roomTypeEntity = roomTypeEntity;
	}

}
