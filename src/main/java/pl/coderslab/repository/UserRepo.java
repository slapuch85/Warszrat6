package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.user.User;

public interface UserRepo extends JpaRepository<User, Long>, UserRepoCustom {

}
