package Class.Services;

import Class.Entity.Ordering;
import Class.Entity.Product;

import java.util.Date;
import java.util.List;

public interface OrderingSer {
    void addOrEdit(Ordering ordering);

    void delete(int id_order);

    Ordering findOneById(int id_order);

    List<Ordering> findAll();


}
