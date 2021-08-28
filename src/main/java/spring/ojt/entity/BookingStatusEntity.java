package spring.ojt.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "bookingstatus")
public class BookingStatusEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@Column(name = "bsStatus")
	private String bsStatus;
	
	@Column(name = "bsDescription")
	private String bsDescription;
	
	
	public List<BookingTourEntity> getBookingTourEntityList() {
		return bookingTourEntityList;
	}


	public void setBookingTourEntityList(List<BookingTourEntity> bookingTourEntityList) {
		this.bookingTourEntityList = bookingTourEntityList;
	}


	public BookingStatusEntity() {
	
	}
	
	
	@OneToMany(mappedBy = "bookingStatusEntity",cascade = CascadeType.ALL)
	private List<BookingRoomEntity> bookingRoomEntityList;

	@OneToMany(mappedBy = "bookingStatusEntity")
	private List<BookingTourEntity> bookingTourEntityList;
	
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getBsStatus() {
		return bsStatus;
	}


	public void setBsStatus(String bsStatus) {
		this.bsStatus = bsStatus;
	}


	public String getBsDescription() {
		return bsDescription;
	}


	public void setBsDescription(String bsDescription) {
		this.bsDescription = bsDescription;
	}



	public List<BookingRoomEntity> getBookingRoomEntityList() {
		return bookingRoomEntityList;
	}


	public void setBookingRoomEntityList(List<BookingRoomEntity> bookingRoomEntityList) {
		this.bookingRoomEntityList = bookingRoomEntityList;
	}
	
	
	
	
}
