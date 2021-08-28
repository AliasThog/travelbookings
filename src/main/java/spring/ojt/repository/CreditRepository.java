package spring.ojt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.CreditCardEntity;

@Repository
public interface CreditRepository extends CrudRepository<CreditCardEntity, Integer>{

}
