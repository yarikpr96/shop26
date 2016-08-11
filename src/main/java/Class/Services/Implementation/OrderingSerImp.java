package Class.Services.Implementation;


import Class.Entity.Ordering;
import Class.Repository.OrderingRepo;
import Class.Services.OrderingSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class OrderingSerImp implements OrderingSer {
    @Autowired
    private OrderingRepo orderingRepo;

    public void addOrEdit(Ordering ordering) {
        orderingRepo.save(ordering);
    }

    public void delete(int id_order) {
        orderingRepo.delete(id_order);

    }

    public Ordering findOneById(int id_order) {
        return orderingRepo.findOne(id_order);
    }

    public List<Ordering> findAll() {
        return orderingRepo.findAll();
    }
}
