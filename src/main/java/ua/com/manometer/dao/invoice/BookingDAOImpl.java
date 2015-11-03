package ua.com.manometer.dao.invoice;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.Restrictions;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.com.manometer.model.Customer;
import ua.com.manometer.model.invoice.Booking;
import ua.com.manometer.model.invoice.BookingFilter;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;

@Repository
public class BookingDAOImpl implements BookingDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveBooking(Booking booking) {
        sessionFactory.getCurrentSession().saveOrUpdate(booking);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Booking> listBooking() {
        return sessionFactory.getCurrentSession().createQuery("from Booking").list();
    }


    public List<Booking> listFilteredBooking(BookingFilter invoiceFilter) {

        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Booking.class);
        Conjunction conjunction = Restrictions.conjunction();

        if (StringUtils.isNotBlank(invoiceFilter.getEmployer())){
            Customer employer = getCustomerByShortName(invoiceFilter.getEmployer());
           if (employer!=null){

                criteria.createAlias("invoice","inv");
                conjunction.add(Restrictions.eq("inv.employer", employer));
            }
        }

        if (invoiceFilter.getF1() != 0) {

            if (invoiceFilter.getF1From() != null) {
                conjunction.add(Restrictions.ge("number", invoiceFilter.getF1From()));
            }

            if (invoiceFilter.getF1To() != null) {
                conjunction.add(Restrictions.le("number", invoiceFilter.getF1To()));
            }

        }


        if (invoiceFilter.getF2() == 1) {
            DateTime dateTime = new DateTime();
            conjunction.add(Restrictions.gt("date", dateTime.dayOfYear().withMinimumValue().millisOfDay().withMinimumValue().toDate()));
            conjunction.add(Restrictions.lt("date",dateTime.dayOfYear().withMaximumValue().millisOfDay().withMaximumValue().toDate()));
        }

        if (invoiceFilter.getF2() == 2) {
            conjunction.add(Restrictions.gt("date", new DateTime().minusMonths(3).millisOfDay().withMinimumValue().toDate()));
            conjunction.add(Restrictions.lt("date", new DateTime().millisOfDay().withMaximumValue().toDate()));
        }

        if (invoiceFilter.getF2() == 3) {
            if (invoiceFilter.getF2From() != null) {
                conjunction.add(Restrictions.gt("date", new DateTime(invoiceFilter.getF2From().getTime()).millisOfDay().withMinimumValue().toDate() ));
            }

            if (invoiceFilter.getF2To() != null) {
                conjunction.add(Restrictions.lt("date", new DateTime(invoiceFilter.getF2To().getTime()).millisOfDay().withMaximumValue().toDate() ));
            }
        }

        criteria.add(conjunction);


        return criteria.list();
    }






    @Override
    public void removeBooking(Integer id) {
        Booking booking = (Booking) sessionFactory.getCurrentSession().load(Booking.class, id);
        if (booking != null) {
            sessionFactory.getCurrentSession().delete(booking);
        }
    }


    @Override
    public Boolean checkPresence(Integer number, String numberModifier, Date date) {
        Session session = sessionFactory.getCurrentSession();
        BigInteger count = (BigInteger) session.createSQLQuery("select count(*) from booking b where year(b.date) = year (?) and b.number = ? and b.numberModifier = ? ")
                .setDate(0, date).setInteger(1, number).setString(2, numberModifier).uniqueResult();
        return   count.compareTo(BigInteger.ZERO) == 1;
    }

    private Customer getCustomerByShortName(String shortName) {
        return (Customer) sessionFactory.getCurrentSession().createCriteria(Customer.class).
                add(Restrictions.eq("status", true)).add(Restrictions.eq("shortName", shortName)).uniqueResult();
    }
}
