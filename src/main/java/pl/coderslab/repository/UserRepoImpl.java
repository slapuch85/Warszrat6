package pl.coderslab.repository;

import pl.coderslab.user.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Transactional
public class UserRepoImpl implements UserRepoCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void editUser(Long id, User user){
        user.setId(id);
        entityManager.merge(user);
    }

}
