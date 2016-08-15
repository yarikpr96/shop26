package Class.Services.Implementation;

import Class.DTO.ProductDTO;
import Class.Entity.Product;
import Class.Repository.ProductRepo;
import Class.Services.ProductSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@Service
public class ProductSerImp implements ProductSer {

    @Autowired
    private ProductRepo productRepo;


    public void addOrEdit(Product product) {
        productRepo.save(product);
    }


    public void edit(int id_product, String name_product, String brand, double price_product, String description_product, MultipartFile multipartFile) {
        Product product = productRepo.findOne(id_product);
        product.setName_product(name_product);
        product.setBrand(brand);
        product.setPrice_product(price_product);
        product.setDescription_product(description_product);
        try {
            product.setImage(multipartFile.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        productRepo.save(product);
    }




    public void delete(int id_product) {
        productRepo.delete(id_product);

    }

    @Override
    public Product findOneById(int id_product) {
        return productRepo.findOne(id_product);
    }

    public ProductDTO findOne(int id_product) {

        Product product =  productRepo.findOne(id_product);
        ProductDTO  productDTO= new ProductDTO();
        productDTO.setId_product(product.getId_product());
        productDTO.setName_product(product.getName_product());
        productDTO.setPrice_product(product.getPrice_product());
        productDTO.setBrand(product.getBrand());
        productDTO.setDescription_product(product.getDescription_product());
        String image = Base64.getEncoder().encodeToString(product.getImage());
        productDTO.setImage(image);

        return productDTO;

    }

    public List<ProductDTO> findAll() {
        List<ProductDTO>productDTOs = new ArrayList<>();
        List<Product>productList = productRepo.findAll();

        for (Product product:productList){
            ProductDTO  productDTO= new ProductDTO();
            productDTO.setId_product(product.getId_product());
            productDTO.setName_product(product.getName_product());
            productDTO.setPrice_product(product.getPrice_product());
            productDTO.setBrand(product.getBrand());
            productDTO.setDescription_product(product.getDescription_product());
            String image = Base64.getEncoder().encodeToString(product.getImage());
            productDTO.setImage(image);
            productDTOs.add(productDTO);
        }
        return productDTOs;
    }


    public List<ProductDTO> findByName(String name_product) {

        List<ProductDTO>productDTOs = new ArrayList<>();
        List<Product>productList = productRepo.findByName(name_product);

        for (Product product:productList){
            ProductDTO  productDTO= new ProductDTO();
            productDTO.setId_product(product.getId_product());
            productDTO.setName_product(product.getName_product());
            productDTO.setPrice_product(product.getPrice_product());
            productDTO.setBrand(product.getBrand());
            productDTO.setDescription_product(product.getDescription_product());
            String image = Base64.getEncoder().encodeToString(product.getImage());
            productDTO.setImage(image);
            productDTOs.add(productDTO);
        }
        return productDTOs;
    }
}
