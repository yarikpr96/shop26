package Class.Repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import Class.Entity.Customer;

import java.util.List;


public interface CustomerRepo extends JpaRepository<Customer, Integer>{


    @Query ( " FROM Customer u WHERE u.email LIKE :login OR u.mobile_phone LIKE :login" )
    Customer findByLogin(@Param("login") String login);

//    Customer findByEmailOrMobile_phone(String email, String mobile_phone);
//List<Customer> findByEmail(String email);
    List<Customer>findAll ();

}
