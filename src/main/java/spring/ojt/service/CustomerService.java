package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.CustomersEntity;
import spring.ojt.repository.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
	CustomerRepository customerRepository;
	
	public CustomersEntity saveCustomer(CustomersEntity customer) {
		return customerRepository.save(customer);
	}

	public List<CustomersEntity> findAllCustomer() {
		return (List<CustomersEntity>) customerRepository.findAll();
	}
}
