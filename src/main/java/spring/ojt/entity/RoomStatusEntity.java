package spring.ojt.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "roomstatus")
public class RoomStatusEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "rsRoomStatus")
	private String rsRoomStatus;
	
	@Column(name = "rsDescription")
	private String rsDescription;
	
	
	@OneToMany(mappedBy = "roomStatusEntity")
	private List<RoomEntity> roomEntityList;

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRsRoomStatus() {
		return rsRoomStatus;
	}

	public void setRsRoomStatus(String rsRoomStatus) {
		this.rsRoomStatus = rsRoomStatus;
	}

	public String getRsDescription() {
		return rsDescription;
	}

	public void setRsDescription(String rsDescription) {
		this.rsDescription = rsDescription;
	}


	public List<RoomEntity> getRoomEntityList() {
		return roomEntityList;
	}

	public void setRoomEntityList(List<RoomEntity> roomEntityList) {
		this.roomEntityList = roomEntityList;
	}
	
	
}
