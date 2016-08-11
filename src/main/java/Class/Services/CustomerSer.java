package Class.Services;

import Class.Entity.Customer;

import java.util.List;

public interface CustomerSer {
     void addOrEdit(Customer customer);
     void delete(int id_customer);
     Customer findOneById(int id_customer);
     List<Customer> findAll();

}
