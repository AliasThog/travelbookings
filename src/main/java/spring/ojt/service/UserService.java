package spring.ojt.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import spring.ojt.entity.RoleEntity;
import spring.ojt.entity.UserEntity;

import spring.ojt.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	@Autowired
	PasswordEncoder passwordEncoder;

	public UserEntity saveUser(UserEntity user) {
		RoleEntity roleEntity = new RoleEntity();
		roleEntity.setAuthority("ROLE_USER");
		roleEntity.setUserEntity(user);
		user.setRoleEntityList(Arrays.asList(roleEntity));
//		roleRepository.save(roleEntity);
		user.setEnabled(1);

		user.setPassword(passwordEncoder.encode(user.getPassword()));
		return userRepository.save(user);
	}

	public List<UserEntity> findAllUser() {
		return (List<UserEntity>) userRepository.findAll();
	}

	public UserEntity saveStaff(UserEntity user) {
		RoleEntity roleEntity = new RoleEntity();
		roleEntity.setAuthority("ROLE_STAFF");
		roleEntity.setUserEntity(user);
		user.setRoleEntityList(Arrays.asList(roleEntity));
//		roleRepository.save(roleEntity);

		user.setEnabled(1);
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		return userRepository.save(user);
	}

	public UserEntity saveAdmin(UserEntity user) {
		RoleEntity roleEntity = new RoleEntity();
		roleEntity.setAuthority("ROLE_ADMIN");
		roleEntity.setUserEntity(user);
		user.setRoleEntityList(Arrays.asList(roleEntity));
//		roleRepository.save(roleEntity);
		user.setEnabled(1);
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		return userRepository.save(user);
	}

	public void delete(int id) {
		userRepository.deleteById(id);
	}
}
