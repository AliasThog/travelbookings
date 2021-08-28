package spring.ojt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import spring.ojt.entity.BookingDetailEntity;
import spring.ojt.entity.BookingRoomEntity;
import spring.ojt.repository.BookingRoomRepository;

@PropertySource(value = "classpath:common.properties")
@Service
public class BookingRoomService {
	@Autowired
	BookingRoomRepository bookingRoomRepository;
	
	public BookingRoomEntity saveBooking(BookingRoomEntity bookingRoom) {
		
		return bookingRoomRepository.save(bookingRoom);
	}
	public List<BookingRoomEntity> findAllByMail(String mail) {
		return (List<BookingRoomEntity>) bookingRoomRepository.findAllByMail(mail);
	}
	
//	public List<BookingRoomEntity> findByKeyword(String keyword){
//		return (List<BookingRoomEntity>) bookingRoomRepository.findByCriteria(keyword);
//	}
//	@Value("${common.paging.number}")
//	public int pagingNumber;
//	
//	@Transactional
//	public Page<BookingRoomEntity> getProductsPaging(int page) {
//	  return (Page<BookingRoomEntity>) bookingRoomRepository.findAllByMail(String mail,PageRequest.of(page - 1, pagingNumber));
//	}
}
