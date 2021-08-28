package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.AddressEntity;
import spring.ojt.repository.AddressRepository;

@Service
public class AddressService {
	@Autowired
	AddressRepository addressRepository;
	
	public AddressEntity saveAddress(AddressEntity address1) {
		return addressRepository.save(address1);
		
	}
	public List<AddressEntity> findAllAddress(){
		return (List<AddressEntity>) addressRepository.findAll();
	}
	public void delete(int id) {
		addressRepository.deleteById(id);
	}

}
