package Class.Repository;

import Class.Entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepo extends JpaRepository<Product,Integer> {

    @Query("FROM Product")
    List<Product>findAll();

    @Query("from Product p where p.name_product LIKE :name_product")
    List<Product> findByName (@Param("name_product")String name_product);

}
