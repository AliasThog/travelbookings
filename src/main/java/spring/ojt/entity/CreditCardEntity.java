package spring.ojt.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "creditcard")
public class CreditCardEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "cardnumber")
	@NotBlank(message = " CardNumber is required")
	@Pattern(regexp = "^[0-9]*", message = "CardNumber wasn’t allowed to contain SPECIAL CHARACTERS AND SPACES ")
	@Size(min = 16, max = 16, message = "Allows CardNumber 16 characters.")
	private String cardNumber;

	@Column(name = "expirationDate")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Future(message = "VALID THRU must in the future")
	@NotNull(message = "ExpirationDate is required")
	private Date expirationDate;

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	@Column(name = "cvv")
	@NotBlank(message = "CVV is required")
	@Pattern(regexp = "^[0-9]*", message = "CardNumber wasn’t allowed to contain SPECIAL CHARACTERS AND SPACES ")
	@Size(min = 3, max = 3, message = "Allows CVV 3 characters.")
	private String cvv;

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	@Column(name = "firstName")
	@Pattern(regexp = "^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	@NotBlank(message = " FirstName is required")
	@Size(min = 5, max = 20, message = "Allows FirstName greater than 5 and less than 20 CHARACTERS.")
	private String firstName;

	@Column(name = "lastName")
	@Pattern(regexp = "^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâ" + "ãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằ"
			+ "ẳẵặẹếẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ"
			+ "ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s ]*", message = "Must not contain SPECIAL CHARACTERS")
	@NotBlank(message = " LastName is required")
	@Size(min = 5, max = 20, message = "Allows LastName greater than 5 and less than 20 CHARACTERS.")
	private String lastName;

	@Column(name = "balance")
	private Long balance;

	@OneToMany(mappedBy = "creditCardEntity", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<PaymentEntity> PaymentEntity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Long getBalance() {
		return balance;
	}

	public void setBalance(Long balance) {
		this.balance = balance;
	}

	public List<PaymentEntity> getPaymentEntity() {
		return PaymentEntity;
	}

	public void setPaymentEntity(List<PaymentEntity> paymentEntity) {
		PaymentEntity = paymentEntity;
	}

	public CreditCardEntity() {

	}

}
