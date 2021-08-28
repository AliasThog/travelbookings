package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.RoleEntity;
import spring.ojt.entity.ServiceEntity;
import spring.ojt.repository.ServiceRepository;

@Service
public class ServiceService {
	
	@Autowired
	ServiceRepository serviceRepository;
	
	public List<ServiceEntity> findAllService() {
		return (List<ServiceEntity>) serviceRepository.findAll();
	}
	public ServiceEntity saveService(ServiceEntity service) {
		return serviceRepository.save(service);
	}
	public void delete(int id) {
		serviceRepository.deleteById(id);
	}
}
