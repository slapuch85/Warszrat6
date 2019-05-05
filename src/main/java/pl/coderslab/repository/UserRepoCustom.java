package pl.coderslab.repository;

import pl.coderslab.user.User;

public interface UserRepoCustom {

    void editUser(Long id, User user);
}
