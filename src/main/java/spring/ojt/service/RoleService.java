package spring.ojt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.RoleEntity;
import spring.ojt.entity.RoomEntity;
import spring.ojt.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	RoleRepository roleRepository;
	
	public List<RoleEntity> findAllRole() {
		return (List<RoleEntity>) roleRepository.findAll();
	}
	public RoleEntity saveAccount(RoleEntity user) {
		return roleRepository.save(user);
	}
	public void delete(int id) {
		roleRepository.deleteById(id);
	}
	
	@Value("${common.paging.number}")
	public int pagingNumber;

	@Transactional
	public Page<RoleEntity> getProductsPaging2(int page) {
		return (Page<RoleEntity>) roleRepository.findAll(PageRequest.of(page - 1, pagingNumber));
	}
}
