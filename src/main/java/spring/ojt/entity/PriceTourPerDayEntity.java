package spring.ojt.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "PriceTourPerDay")
public class PriceTourPerDayEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "TimeDateStart")
	@Future(message = "TimeDateStart must in the future")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date timeDateStart;

	@Column(name = "TimeDateEnd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Future(message = "TimeDateStart must in the future")
	private Date timeDateEnd;

	@Column(name = "TimeDate")
	@NotBlank(message = " TimeDate Tour is required")
	private String timeDate;

	@Column(name = "PriceTour")
//	@NotNull(message = "Price Tour is required")
//	@Range(min = 0l, message = "Please select positive numbers Only")
//	@Max(value = 2000000000, message="Must be equal or less than 2000000000") 
	private int priceTour;

	@Column(name = "PriceTourChildren")
//	@NotNull(message = "Price Tour Children is required")
//	@Range(min = 0l, message = "Please select positive numbers Only")
//	@Max(value = 2000000000, message="Must be equal or less than 2000000000") 
	private int priceTourChildren;

	@Column(name = "discountpromotion")
//	@Range(min = 0l, message = "Please select positive numbers Only")
//	@Max(value = 2000000000, message="Must be equal or less than 2000000000") 
	private int discountPromotion;

	public PriceTourPerDayEntity() {

	}

	@ManyToOne
	@JoinColumn(name = "idTour")
	private TourEntity tourEntity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getTimeDateStart() {
		return timeDateStart;
	}

	public void setTimeDateStart(Date timeDateStart) {
		this.timeDateStart = timeDateStart;
	}

	public Date getTimeDateEnd() {
		return timeDateEnd;
	}

	public void setTimeDateEnd(Date timeDateEnd) {
		this.timeDateEnd = timeDateEnd;
	}

	public String getTimeDate() {
		return timeDate;
	}

	public void setTimeDate(String timeDate) {
		this.timeDate = timeDate;
	}

	public int getPriceTour() {
		return priceTour;
	}

	public void setPriceTour(int priceTour) {
		this.priceTour = priceTour;
	}

	public int getPriceTourChildren() {
		return priceTourChildren;
	}

	public void setPriceTourChildren(int priceTourChildren) {
		this.priceTourChildren = priceTourChildren;
	}

	public int getDiscountPromotion() {
		return discountPromotion;
	}

	public void setDiscountPromotion(int discountPromotion) {
		this.discountPromotion = discountPromotion;
	}

	public TourEntity getTourEntity() {
		return tourEntity;
	}

	public void setTourEntity(TourEntity tourEntity) {
		this.tourEntity = tourEntity;
	}

}