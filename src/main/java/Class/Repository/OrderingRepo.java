package Class.Repository;

import Class.Entity.Ordering;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrderingRepo extends JpaRepository<Ordering, Integer> {
    @Query ("FROM Ordering ")
    List<Ordering> findAll();
}
