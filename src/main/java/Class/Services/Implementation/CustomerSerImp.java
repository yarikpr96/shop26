package Class.Services.Implementation;


import Class.Entity.Customer;
import Class.Repository.CustomerRepo;
import Class.Services.CustomerSer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.persistence.NoResultException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@Service
public class CustomerSerImp implements CustomerSer, UserDetailsService {
    @Autowired
    private CustomerRepo customerRepo;


    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        Customer customer;

        try {
            customer = (Customer) customerRepo.findByLogin(login);
        } catch (NoResultException e) {
            return null;
        }
        Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        return new org.springframework.security.core.userdetails.User(String.valueOf(customer.getId_customer()), customer.getPassword(), authorities);
    }

    public void addOrEdit(Customer customer) {
        customerRepo.save(customer);
    }

    public void delete(int id_customer) {
        customerRepo.delete(id_customer);

    }

    public Customer findOneById(int id_customer) {
        return customerRepo.findOne(id_customer);
    }

    public List<Customer> findAll() {
        return customerRepo.findAll();
    }
}
