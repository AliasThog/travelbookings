package spring.ojt.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.AddressEntity;
import spring.ojt.entity.BookingDetailEntity;
import spring.ojt.entity.BookingRoomEntity;
import spring.ojt.entity.BookingStatusEntity;
import spring.ojt.entity.CreditCardEntity;
import spring.ojt.entity.CustomersEntity;
import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.HotelTypeEntity;
import spring.ojt.entity.PaymentEntity;
import spring.ojt.entity.RoomEntity;
import spring.ojt.entity.ServiceEntity;
import spring.ojt.model.EmailDTO;
import spring.ojt.repository.BookingDetailsRepository;
import spring.ojt.repository.BookingStatusRepository;
import spring.ojt.repository.CustomerRepository;
import spring.ojt.repository.RoomRepository;
import spring.ojt.repository.ServiceRepository;
import spring.ojt.service.BookingDetailsService;
import spring.ojt.service.BookingRoomService;
import spring.ojt.service.CreditService;
import spring.ojt.service.HotelService;
import spring.ojt.service.PaymentService;
import spring.ojt.service.RoomService;
import spring.ojt.service.SendMailService;
import spring.ojt.service.ServiceService;
import spring.ojt.service.TourService;

@Controller
public class PaymentHotelController {
	@Autowired
	public HotelService hotelService;

	@Autowired
	public TourService tourService;

	@Autowired
	RoomService roomService;

	@Autowired
	CreditService creditService;

	@Autowired
	RoomRepository roomRepository;

	@Autowired
	BookingDetailsService bookingDetailsService;

	@Autowired
	BookingRoomService bookingRoomService;

	@Autowired
	CustomerRepository customerRepository;

	@Autowired
	ServiceRepository serviceRepository;

	@Autowired
	ServiceService serviceService;

	@Autowired
	PaymentService paymentService;

	@Autowired
	public SendMailService sendMailService;

	@Autowired
	BookingStatusRepository bookingStatusRepository;

	@Autowired
	BookingDetailsRepository bookingDetailsRepository;

	BookingStatusEntity bookingStatusEntity = new BookingStatusEntity();
	BookingRoomEntity bookingRoomEntity = new BookingRoomEntity();

	@GetMapping("/paymentHotel")
	public String bookingDetail(Model model, @RequestParam(name = "id") int id, HttpSession session) {

		Optional<RoomEntity> room1 = roomRepository.findById(id);
		model.addAttribute("room1", room1.get());
		CustomersEntity customersEntity = new CustomersEntity();
//		BookingRoomEntity bookingRoomEntity = new BookingRoomEntity();
		BookingDetailEntity bookingDetailEntity = new BookingDetailEntity();

//		BookingStatusEntity bookingStatusEntity = new BookingStatusEntity();
		bookingStatusEntity.setId(2);
		String email = (String) session.getAttribute("email");

//		String email = (String) session.getAttribute("email");
		customersEntity.setMail((String) session.getAttribute("email"));

		bookingRoomEntity.setBookingStatusEntity(bookingStatusEntity);

		bookingRoomEntity.setCustomersEntity(customersEntity);
		bookingDetailEntity.setBookingRoomEntity(bookingRoomEntity);

		// bookingDetailEntity.setRoomEntity(room1.get());
		model.addAttribute("bookingDetail", bookingDetailEntity);

		List<ServiceEntity> serviceEntity = serviceService.findAllService();
		model.addAttribute("serviceEntity", serviceEntity);

		return "paymentHotel";

	}

	@Transactional
	@PostMapping("/paymentHotel2")
	public String addDoBooking(Model model,
			@ModelAttribute(name = "bookingDetail") @Valid BookingDetailEntity bookingDetail, BindingResult result,
			@RequestParam(name = "id") int id, HttpSession session) {

		Optional<RoomEntity> room1 = roomRepository.findById(id);
		List<ServiceEntity> serviceEntity = serviceService.findAllService();
		bookingDetail.setRoomEntity(room1.get());
		bookingDetail.setId(0);
		if (result.hasErrors()) {

			model.addAttribute("room1", room1.get());

			model.addAttribute("serviceEntity", serviceEntity);

			return "paymentHotel";
		} else if (bookingDetail.getBookingRoomEntity().getStartDate()
				.isAfter(bookingDetail.getBookingRoomEntity().getEndDate())
				|| bookingDetail.getBookingRoomEntity().getStartDate()
						.isEqual(bookingDetail.getBookingRoomEntity().getEndDate())) {
			model.addAttribute("message", "Start Date is less than End Date ");

			model.addAttribute("room1", room1.get());
			model.addAttribute("serviceEntity", serviceEntity);
			return "paymentHotel";

		}

		customerRepository.save(bookingDetail.getBookingRoomEntity().getCustomersEntity());
		bookingRoomService.saveBooking(bookingDetail.getBookingRoomEntity());
		bookingDetailsService.saveBookingDetail(bookingDetail);

		session.setAttribute("booking", bookingDetail.getBookingRoomEntity());
		session.setAttribute("customer", bookingDetail.getBookingRoomEntity().getCustomersEntity());
		session.setAttribute("service", bookingDetail.getBookingRoomEntity().getServiceEntity());
		session.setAttribute("bookingDetail", bookingDetail);
		session.setAttribute("totalPrice", bookingDetail.getBookingRoomEntity().getTotalPrice());
		session.setAttribute("status", bookingDetail.getBookingRoomEntity().getBookingStatusEntity().getId());
		model.addAttribute("creditCard", new PaymentEntity());
		return "creaditCard";
	}

	@PostMapping("/doCredit")
	public String doCredit(Model model, @ModelAttribute(name = "creditCard") @Valid PaymentEntity creaditCard,
			BindingResult result, HttpSession session) {

		BookingRoomEntity booking = (BookingRoomEntity) session.getAttribute("booking");
		BookingDetailEntity bookingDetail = (BookingDetailEntity) session.getAttribute("bookingDetail");
		Long totalPrice = (Long) session.getAttribute("totalPrice");
		session.getAttribute("service");
		session.getAttribute("status");
		if (result.hasErrors()) {

			return "creaditCard";
		} 
		else if(result.hasErrors() || totalPrice > creaditCard.getCreditCardEntity().getBalance())
		{
			model.addAttribute("message", "Số dư của bạn không đủ để thanh toán, vui lòng kiểm tra lại tài khoản");
			
			return "creaditCard";
		} {
			Long newBlance = creaditCard.getCreditCardEntity().getBalance() - totalPrice;
			creaditCard.getCreditCardEntity().setBalance(newBlance);
		}
		
		
		session.setAttribute("status", 1);
		paymentService.savePayment(creaditCard);

		bookingStatusEntity.setId(1);
		booking.setBookingStatusEntity(bookingStatusEntity);

		bookingDetailsService.saveBookingDetail(bookingDetail);

		EmailDTO emaildto = new EmailDTO();
		emaildto.setSubject("Cảm ơn " + bookingDetail.getBookingRoomEntity().getCustomersEntity().getFullName()
				+ " ! Đặt phòng của bạn ở " + bookingDetail.getRoomEntity().getHotelEntity().getTen()
				+ " đã được xác nhận");
		emaildto.setTo(bookingDetail.getBookingRoomEntity().getCustomersEntity().getMail());
		emaildto.setText("Chi tiết đặt phòng : \n" + "Tên phòng : " + bookingDetail.getRoomEntity().getName() + "\n"
				+ "Nhận phòng : " + bookingDetail.getBookingRoomEntity().getStartDate() + " (14:00 - 00:00)" + "\n"
				+ "Trả phòng : " + bookingDetail.getBookingRoomEntity().getEndDate() + " (00:00 - 12:00)" + "\n"
				+ "Bạn đã đặt cho : " + bookingDetail.getBookingRoomEntity().getNumOfAdults() + " người lớn, "
				+ bookingDetail.getBookingRoomEntity().getNumOfChild() + " trẻ em " + "\n" + "Địa điểm : "
				+ bookingDetail.getRoomEntity().getHotelEntity().getDiaChi() + "\n"
				+ "Chính sách Hủy đặt phòng : Liên hệ với chúng tôi theo số điện thoại : 0979797979. Bạn có thể hủy đặt phòng miễn phí đến 14:00 ngày nhận phòng. Bạn sẽ phải trả toàn bộ tiền phòng nếu bạn hủy sau 14:00 ngày nhận phòng."
				+ "\n" + "Phí huỷ phòng : Đến " + bookingDetail.getBookingRoomEntity().getStartDate()
				+ " 14:00 . Đặt phòng này không hoàn tiền. Bạn không thể đổi ngày cho kỳ nghỉ của mình." + "\n"
				+ "Tổng giá phòng : " + bookingDetail.getBookingRoomEntity().getTotalPrice() + " VND.");

		sendMailService.sendSimpleMessage(emaildto);

		session.removeAttribute("bookingDetail");
		return "successPayment";
	}

}
