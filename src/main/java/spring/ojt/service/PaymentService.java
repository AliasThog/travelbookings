package spring.ojt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.PaymentEntity;
import spring.ojt.repository.PaymentRepository;

@Service
public class PaymentService {
	@Autowired
	PaymentRepository paymentRepository;
	
	public PaymentEntity savePayment(PaymentEntity creditCard) {
		return paymentRepository.save(creditCard);
	}
}
