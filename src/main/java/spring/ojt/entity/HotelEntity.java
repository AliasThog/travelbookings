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
import javax.validation.constraints.Max;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
import org.springframework.lang.Nullable;

@Entity
@Table(name = "hotel")
public class HotelEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "ten")
	@NotBlank(message = "Name Hotel is required")
	@Size(max = 30, message = "Allows Name Hotel 30 characters.")
	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String ten;

	@Column(name = "diachi")
	@NotBlank(message = "Address Hotel is required")
	@Size(max = 100, message = "Allows Address Hotel 100 characters.")
	private String diaChi;

	@Column(name = "cachtrungtam")
	@NotNull(message = "Cách trung tâm is required")
	@Range(min = 0l, message = "Please select positive numbers Only")
	@Max(value = 1000000000, message="Must be equal or less than 1000000000")  
	private int cachTrungTam;

	@Column(name = "mota")
	@NotBlank(message = "Description is required")
	@Size(max = 500, message = "Allows Description 500 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String moTa;

	@Column(name = "danhgia")
	@NotBlank(message = "Evaluate is required")
	@Size(max = 300, message = "Allows Evaluate 300 characters.")
//	@Pattern(regexp = "^[a-zA-Z0-9ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
//			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
//			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	private String danhGia;

	@Column(name = "urlImage")
	private String urlImage;

	
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
	
	@Column(name = "dichvu")
	@Size(max = 1000, message = "Allows Dich Vu 1000 characters.")
	private String dichvu;
	
	
	@Column(name = "dichvu1")
	@Size(max = 1000, message = "Allows Dich Vu 1000 characters.")
	private String dichvu1;
	
	@Column(name = "dichvu2")
	@Size(max = 1000, message = "Allows Dich Vu 1000 characters.")
	private String dichvu2;
	
	@Column(name = "dichvu3")
	@Size(max = 1000, message = "Allows Dich Vu 1000 characters.")
	private String dichvu3;
	
	@Column(name = "combo")
	@Size(max = 500, message = "Allows combo 500 characters.")
	private String combo;
	
	
	public String getCombo() {
		return combo;
	}

	public void setCombo(String combo) {
		this.combo = combo;
	}

	public String getDichvu1() {
		return dichvu1;
	}

	public void setDichvu1(String dichvu1) {
		this.dichvu1 = dichvu1;
	}

	public String getDichvu2() {
		return dichvu2;
	}

	public void setDichvu2(String dichvu2) {
		this.dichvu2 = dichvu2;
	}

	public String getDichvu3() {
		return dichvu3;
	}

	public void setDichvu3(String dichvu3) {
		this.dichvu3 = dichvu3;
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

	public String getTraiNghiem() {
		return traiNghiem;
	}

	public void setTraiNghiem(String traiNghiem) {
		this.traiNghiem = traiNghiem;
	}

	public String getTienIch() {
		return tienIch;
	}

	public void setTienIch(String tienIch) {
		this.tienIch = tienIch;
	}

	public String getDichvu() {
		return dichvu;
	}

	public void setDichvu(String dichvu) {
		this.dichvu = dichvu;
	}

	public String getUrlImage() {
		return urlImage;
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}

	public HotelEntity() {

	}

	@ManyToOne
	@JoinColumn(name = "iddiadiem")
	private AddressEntity addressEntity;

	public HotelTypeEntity getHotelTypeEntity() {
		return hotelTypeEntity;
	}

	public void setHotelTypeEntity(HotelTypeEntity hotelTypeEntity) {
		this.hotelTypeEntity = hotelTypeEntity;
	}

	@OneToMany(mappedBy = "hotelEntity", fetch = FetchType.EAGER)
	private List<RoomEntity> roomEntityList;

	@ManyToOne
	@JoinColumn(name = "IdHotelType")
	private HotelTypeEntity hotelTypeEntity;

	public List<RoomEntity> getRoomEntityList() {
		return roomEntityList;
	}

	public void setRoomEntityList(List<RoomEntity> roomEntityList) {
		this.roomEntityList = roomEntityList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public int getCachTrungTam() {
		return cachTrungTam;
	}

	public void setCachTrungTam(int cachTrungTam) {
		this.cachTrungTam = cachTrungTam;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getDanhGia() {
		return danhGia;
	}

	public void setDanhGia(String danhGia) {
		this.danhGia = danhGia;
	}

	public AddressEntity getAddressEntity() {
		return addressEntity;
	}

	public void setAddressEntity(AddressEntity addressEntity) {
		this.addressEntity = addressEntity;
	}

}
