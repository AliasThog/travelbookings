package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.RoomTypeEntity;
import spring.ojt.repository.RoomTypeRepository;

@Service
public class RoomTypeService {

	@Autowired
	RoomTypeRepository roomTypeRepository;
	
	
	public List<RoomTypeEntity> findAllRoomType() {
		return (List<RoomTypeEntity>) roomTypeRepository.findAll();
	}
}
