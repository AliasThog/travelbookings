package spring.ojt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import spring.ojt.entity.RoomEntity;
import spring.ojt.repository.RoomRepository;

@Service
public class RoomService {
	@Autowired
	RoomRepository roomRepository;

	public RoomEntity saveRoom(RoomEntity room1) {
		return roomRepository.save(room1);

	}

	public List<RoomEntity> findAllRoom() {
		return (List<RoomEntity>) roomRepository.findAll();
	}

	public void deleteRoom(int id) {
		roomRepository.deleteById(id);
	}

	public List<RoomEntity> findByKeyword(String keyword) {
		return (List<RoomEntity>) roomRepository.findByCriteria(keyword);
	}

	@Value("${common.paging.number}")
	public int pagingNumber;

	@Transactional
	public Page<RoomEntity> getProductsPaging1(int page) {
		return (Page<RoomEntity>) roomRepository.findAll(PageRequest.of(page - 1, pagingNumber));
	}

}
