package Class.Services;

import Class.Entity.Product;

import java.util.List;

public interface ProductSer {
    void addOrEdit(Product product);

    void delete(int id_product);

    Product findOneById(int id_product);

    List<Product> findAll();
    List<Product> findByName(String name_product);



}
