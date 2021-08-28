package spring.ojt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.PaymentEntity;

@Repository
public interface PaymentRepository extends CrudRepository<PaymentEntity, Integer> {

}
