package spring.ojt.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;

@Entity
@Table(name = "bookingdetail")
public class BookingDetailEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "IdRoom") 
	private RoomEntity roomEntity;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "IdBookingRoom") 
	@Valid
	private BookingRoomEntity bookingRoomEntity;

	public BookingDetailEntity(int id, RoomEntity roomEntity, @Valid BookingRoomEntity bookingRoomEntity) {
		super();
		this.id = id;
		this.roomEntity = roomEntity;
		this.bookingRoomEntity = bookingRoomEntity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public RoomEntity getRoomEntity() {
		return roomEntity;
	}

	public void setRoomEntity(RoomEntity roomEntity) {
		this.roomEntity = roomEntity;
	}

	public BookingRoomEntity getBookingRoomEntity() {
		return bookingRoomEntity;
	}

	public void setBookingRoomEntity(BookingRoomEntity bookingRoomEntity) {
		this.bookingRoomEntity = bookingRoomEntity;
	}

	public BookingDetailEntity() {
		super();
	}
	
	
}
