package event.backstage.Eventify;

import event.backstage.Entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
public Optional<User> findByEmailAndPassword(String email , String password) ;
}
