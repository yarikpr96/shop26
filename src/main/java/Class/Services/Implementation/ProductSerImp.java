package Class.Services.Implementation;

import Class.Entity.Product;
import Class.Repository.ProductRepo;
import Class.Services.ProductSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductSerImp implements ProductSer {

    @Autowired
    private ProductRepo productRepo;


    public void addOrEdit(Product product) {
        productRepo.save(product);
    }

    public void delete(int id_product) {
        productRepo.delete(id_product);

    }

    public Product findOneById(int id_product) {
        return productRepo.findOne(id_product);
    }

    public List<Product> findAll() {
        return productRepo.findAll();
    }

    public List<Product> findByName(String name_product) {
        return productRepo.findByName(name_product);
    }
}
