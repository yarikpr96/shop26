package Class.Controllers;

import Class.Entity.Customer;
import Class.Entity.Ordering;
import Class.Entity.Product;

import Class.Services.CustomerSer;
import Class.Services.OrderingSer;
import Class.Services.ProductSer;
;
import Class.Validations.CustomersVal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class BaseController {


    @Autowired
    private ProductSer productSer;
    @Autowired
    private CustomerSer customerSer;
    @Autowired
    private OrderingSer orderingSer;
    @Autowired
    private CustomersVal customersVal;


    @RequestMapping ( value = "/", method = RequestMethod.GET )
    private String home() {
        return "views-base-home";
    }

    @RequestMapping ( value = "/a", method = RequestMethod.GET )
    private String a() {
        return "views-base-a";
    }

    @RequestMapping ( value = "/beta", method = RequestMethod.GET )
    private String test() {
        return "views-base-beta";
    }


    @RequestMapping ( value = "/allProduct", method = RequestMethod.GET )
    private String allProduct(Model model) {
        List<Product> productList = productSer.findAll();
        model.addAttribute("product", productList);
        return "views-product-allProduct";

    }

    @RequestMapping ( value = "/newProduct", method = RequestMethod.GET )
    private String createNewProduct(Model model) {
        model.addAttribute("product", new Product());
        return "views-product-newProduct";
    }


    @RequestMapping ( value = "/newProduct", method = RequestMethod.POST )
    public String createProduct(@ModelAttribute Product product) {
        productSer.addOrEdit(product);
        return "redirect:/allProduct";
    }


    @RequestMapping ( value = "/productPage/{id_product}", method = RequestMethod.GET )
    public String productPage(@PathVariable String id_product, Model model) {
        Product product = productSer.findOneById(Integer.parseInt(id_product));
        model.addAttribute("product", product);
        return "views-product-productPage";
    }

    @RequestMapping ( value = "/typeA", method = RequestMethod.GET )
    private String typeA(Model model) {
        List<Product> productList = productSer.findAll();
        model.addAttribute("product", productList);
        return "views-product-typeA";
    }

    @RequestMapping ( value = "/typeB", method = RequestMethod.GET )
    private String typeB(Model model) {
        List<Product> productList = productSer.findAll();
        model.addAttribute("product", productList);
        return "views-product-typeB";
    }

    @RequestMapping ( value = "/typeC", method = RequestMethod.GET )
    private String typeC(Model model) {
        List<Product> productList = productSer.findAll();
        model.addAttribute("product", productList);
        return "views-product-typeC";
    }

    @RequestMapping ( value = "/allType", method = RequestMethod.GET )
    private String allType(Model model) {
        return "views-product-allType";
    }

    @RequestMapping ( value = "/aboutShop", method = RequestMethod.GET )
    private String aboutShop(Model model) {
        return "views-other-aboutShop";
    }

    @RequestMapping ( value = "/contacts", method = RequestMethod.GET )
    private String contacts(Model model) {
        return "views-other-contacts";
    }

    @RequestMapping ( value = "/guarantee", method = RequestMethod.GET )
    private String guarantee(Model model) {
        return "views-other-guarantee";
    }

    @RequestMapping ( value = "/delivery", method = RequestMethod.GET )
    private String delivery(Model model) {
        return "views-other-delivery";
    }


    @RequestMapping ( value = "/loginpage", method = RequestMethod.GET )
    public String login() {
        return "views-base-login";
    }

    @RequestMapping ( value = "/registration", method = RequestMethod.GET )
    public String registration(Model model) {
        model.addAttribute("customer", new Customer());
        return "views-base-registration";
    }

    @RequestMapping ( value = "/registration", method = RequestMethod.POST )
    public String registration(@ModelAttribute Customer customer, BindingResult bindingResult) {
        customersVal.validate(customer, bindingResult);
        if (bindingResult.hasErrors()) {
            return "views-base-registration";
        } else {
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));
            customerSer.addOrEdit(customer);
            return "redirect:/";
        }
    }


    @RequestMapping ( value = "/productEdit/{id_product}", method = RequestMethod.GET )
    public String dit(@PathVariable String id_product, Model model) {
        model.addAttribute("product", productSer.findOneById(Integer.parseInt(id_product)));
        return "views-product-productEdit";
    }

    @RequestMapping ( value = "/productEdit", method = RequestMethod.POST )
    public String edit(@ModelAttribute Product product) {
        productSer.addOrEdit(product);
        return "redirect:/allProduct";
    }

    @RequestMapping ( value = "/product/delete/{id_product}", method = RequestMethod.POST )
    public String delete(@PathVariable String id_product) {
        productSer.delete(Integer.parseInt(id_product));
        return "redirect:/allProduct";
    }

    @RequestMapping ( value = "/cabinet", method = RequestMethod.GET )
    public String cabinet(Principal principal, Model model) {
        model.addAttribute("customer", customerSer.findOneById(Integer.parseInt(principal.getName())));
        return "views-base-cabinet";
    }


    @RequestMapping ( value = "/search", method = RequestMethod.GET )
    private String search() {
        return "views-base-search";
    }

    @RequestMapping ( value = "/searchh", method = RequestMethod.GET )
    private String searchh() {
        return "views-base-searchh";
    }

    @RequestMapping ( value = "/searchh", method = RequestMethod.POST )
    public String search(Model model, @RequestParam ( "name_product" ) String name_product) {
        List<Product> productList = productSer.findByName(name_product);
        model.addAttribute("product", productList);
//        System.out.println(productList);
        return "views-base-searchh";
    }


    // додати в корзину
    @RequestMapping ( value = "/test/{id}", method = RequestMethod.GET )
    public String addToBasket(HttpSession httpSession, @PathVariable String id) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        Product product = productSer.findOneById(Integer.parseInt(id));
        if (products == null) {
            products = new ArrayList<Product>();
        }
        products.add(product);
//        System.out.println(products);

        httpSession.setAttribute("products", products);
        return "redirect:/allProduct";
    }

    //переглянути корзину
    @RequestMapping ( value = "/test", method = RequestMethod.GET )
    private String addToBasket(HttpSession httpSession, Model model) {

        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        if (products == null) {
            products = new ArrayList<Product>();
        }
        double d = 0;
        for (Product o : products) {
            d += o.getPrice_product();
        }

        model.addAttribute("price", d);
        model.addAttribute("product", products);
        return "views-product-test";
    }

    //додати замовлення
    @RequestMapping ( value = "/test", method = RequestMethod.POST )
    public String addToBasket(HttpSession httpSession, @ModelAttribute Ordering ordering, Principal principal) {
        List<Product> productList = (List<Product>) httpSession.getAttribute("products");
        if (productList == null) {
            productList = new ArrayList<Product>();
        }
        ordering.setProductList(productList);
        ordering.setCustomer(customerSer.findOneById(Integer.parseInt(principal.getName())));
        for (Product o : productList) {
            ordering.setSum(ordering.getSum() + o.getPrice_product());
        }
        orderingSer.addOrEdit(ordering);
        httpSession.removeAttribute("products");
        return "redirect:/";
    }

    //очистити всю корзину
    @RequestMapping ( value = "/testd", method = RequestMethod.POST )
    public String dellBasket(HttpSession httpSession) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        httpSession.removeAttribute("products");
        return "redirect:/allProduct";
    }

    //видалити з  корзини
    @RequestMapping ( value = "/testdd/{id_product}", method = RequestMethod.POST )
    public String dellBasketid(HttpSession httpSession, @PathVariable String id_product) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        Product product1 = productSer.findOneById(Integer.parseInt(id_product));
        Iterator<Product> iter = products.iterator();
        while (iter.hasNext()) {
            if (iter.next().getId_product() == product1.getId_product()) {
                iter.remove();
            }
            products = (List<Product>) httpSession.getAttribute("products");
        }
        return "redirect:/test";
    }

    @RequestMapping ( value = "/allOrder", method = RequestMethod.GET )
    private String allOrder(Model model) {
        List<Ordering> orderingList = orderingSer.findAll();
        if (orderingList == null) {
            orderingList = new ArrayList<Ordering>();
        }
        model.addAttribute("order", orderingList);
        return "views-order-allOrder";

    }

    @RequestMapping ( value = "/allOrder/delete/{id_order}", method = RequestMethod.POST )
    public String deleteOrder(@PathVariable String id_order) {
        orderingSer.delete(Integer.parseInt(id_order));
        return "redirect:/allOrder";
    }


}