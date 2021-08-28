package spring.ojt.entity;



import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;




@Entity
@Table(name = "users")
public class UserEntity {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "username")
	@Pattern(regexp = "^[A-Za-z0-9]*", message = "Must not contain SPECIAL CHARACTERS AND SPACES ")
	@Size(min = 10, max = 30, message = "Allows Username between 10 and 30 characters.")
	@NotBlank(message = " Username is required")
	private String username;

	@Column(name = "email")
	@NotBlank(message = "Email is required")
	@Email(message = "format email is incorrect")
	private String email;

	public String getEmail() {
		return email;
	}
	
	
	@OneToMany(mappedBy = "userEntity", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<RoleEntity> roleEntityList;
	
	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password")
//	@Pattern(regexp = "^[A-Za-z0-9]*", message = "Must not contain SPECIAL CHARACTERS AND SPACES ")
	@Size(min = 8, max = 200, message = "Allows password between 8 and 200 characters.")
	@NotBlank(message = " Password is required")
	private String password;

	@Transient
	@NotBlank(message="Confirm Passwrod is required")
	private String confirmPassword;

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	
	@Column(name = "enabled")
	private int enabled;

	
//	@Column(name = "createdon")
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
//	private Date createdOn;

	@OneToOne(mappedBy = "userEntity", fetch = FetchType.EAGER)
	private CustomersEntity customersEntity;
	
	
	public CustomersEntity getCustomersEntity() {
		return customersEntity;
	}

	public void setCustomersEntity(CustomersEntity customersEntity) {
		this.customersEntity = customersEntity;
	}

	public List<RoleEntity> getRoleEntityList() {
		return roleEntityList;
	}

	public void setRoleEntityList(List<RoleEntity> roleEntityList) {
		this.roleEntityList = roleEntityList;
	}

	public UserEntity() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

//	public Date getCreatedOn() {
//		return createdOn;
//	}
//
//	public void setCreatedOn(Date createdOn) {
//		this.createdOn = createdOn;
//	}
//
//	public String getStatus() {
//		return status;
//	}
//
//	public void setStatus(String status) {
//		this.status = status;
//	}

}
