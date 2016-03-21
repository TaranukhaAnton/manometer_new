package ua.com.manometer.dao;

import org.hibernate.*;

import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.com.manometer.model.User;

import java.io.File;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<User> listUser() {
        List<User> list = sessionFactory.getCurrentSession().createQuery("from User").list();
        for (User user : list) {
            Hibernate.initialize(user.getBookingFilter());
            Hibernate.initialize(user.getInvoiceFilter());
        }
        return list;
    }

    @Override
    public List<User> listUser(Integer page, Integer count) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(User.class);
        criteria.setMaxResults(count);
        criteria.setFirstResult((page - 1) * count);
        List list = criteria.list();
        return list;
    }

    @Override
    public void removeUser(Integer id) {
        Session currentSession = sessionFactory.getCurrentSession();
        User user = (User) currentSession.load(User.class, id);
        if (user != null) {
            sessionFactory.getCurrentSession().delete(user);
        }
    }

    @Override
    public User getUser(Integer id) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, id);
        Hibernate.initialize(user.getBookingFilter());
        Hibernate.initialize(user.getInvoiceFilter());
        return user;
    }

    @Override
    public User findByLogin(String login) {

        User user = (User) sessionFactory.getCurrentSession().createCriteria(User.class).
                add(Restrictions.eq("login", login)).uniqueResult();
        Hibernate.initialize(user.getBookingFilter());
        Hibernate.initialize(user.getInvoiceFilter());
        return user;
    }

    @Override
    public Long getUsersCount() {
        return (Long) sessionFactory.getCurrentSession().createCriteria(User.class).setProjection(Projections.rowCount()).uniqueResult();
    }
}
