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
@Table(name = "roomtype")
public class RoomTypeEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "rtRoomtype")
	private String rtRoomtype;

	@Column(name = "rtDescription")
	private String rtDescription;


	public RoomTypeEntity() {
		
	}
	
	
	@OneToMany(mappedBy = "roomTypeEntity")
	private List<RoomEntity> roomEntityList;

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getRtRoomtype() {
		return rtRoomtype;
	}


	public void setRtRoomtype(String rtRoomtype) {
		this.rtRoomtype = rtRoomtype;
	}


	public String getRtDescription() {
		return rtDescription;
	}


	public void setRtDescription(String rtDescription) {
		this.rtDescription = rtDescription;
	}




	public List<RoomEntity> getRoomEntityList() {
		return roomEntityList;
	}


	public void setRoomEntityList(List<RoomEntity> roomEntityList) {
		this.roomEntityList = roomEntityList;
	}
	
	
	
}
