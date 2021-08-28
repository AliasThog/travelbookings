package spring.ojt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.CreditCardEntity;
import spring.ojt.repository.CreditRepository;

@Service
public class CreditService {
	@Autowired
	CreditRepository creditRepository;
	
	
	public CreditCardEntity saveCredit(CreditCardEntity creditCard) {
		return creditRepository.save(creditCard);
	}
}
