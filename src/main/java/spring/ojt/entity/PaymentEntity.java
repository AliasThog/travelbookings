package spring.ojt.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.Valid;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "payment")
public class PaymentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "paymentDate",updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")   
    private Date paymentDate;
    
	@PrePersist
	protected void onCreate() {
		this.paymentDate = new Date();
	}       
   
//    @ManyToOne
//    @JoinColumn(name = "idBookingRoom")
//    private BookingRoomEntity bookingRoomEntity;
    
	@OneToOne(mappedBy = "paymentEntity", fetch = FetchType.EAGER)
	private BookingRoomEntity bookingRoomEntity;
   
    
    
    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @Valid
    @JoinColumn(name = "IdCredit")
    private CreditCardEntity creditCardEntity;
    
    
    
	public PaymentEntity() {
	}




	public BookingRoomEntity getBookingRoomEntity() {
		return bookingRoomEntity;
	}




	public void setBookingRoomEntity(BookingRoomEntity bookingRoomEntity) {
		this.bookingRoomEntity = bookingRoomEntity;
	}




	public CreditCardEntity getCreditCardEntity() {
		return creditCardEntity;
	}




	public void setCreditCardEntity(CreditCardEntity creditCardEntity) {
		this.creditCardEntity = creditCardEntity;
	}




	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

 


    
    
    
}