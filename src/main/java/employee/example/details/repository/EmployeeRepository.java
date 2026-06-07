package employee.example.details.repository;

import employee.example.details.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    // JpaRepository automatically provides CRUD operations like save(), findAll(), findById(), and deleteById()
}