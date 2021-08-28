package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.RoomStatusEntity;
import spring.ojt.repository.RoomStatusRepository;

@Service
public class RoomStatusService {
	@Autowired
		RoomStatusRepository roomStatusRepository;
	
	public List<RoomStatusEntity> findAllRoomStatus() {
		return (List<RoomStatusEntity>) roomStatusRepository.findAll();
	}
}
