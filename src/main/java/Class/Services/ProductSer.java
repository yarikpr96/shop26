package Class.Services;

import Class.DTO.ProductDTO;
import Class.Entity.Product;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ProductSer {
    void addOrEdit(Product product);

    void edit(int id_product, String name_product, String brand,
              double price_product, String description_product, MultipartFile multipartFile);

    void delete(int id_product);

    ProductDTO findOne(int id_product);
    Product findOneById(int id_product);

    List<ProductDTO> findAll();

    List<ProductDTO> findByName(String name_product);


}
