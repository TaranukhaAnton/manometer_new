package ua.com.manometer.model.invoice.filter;


import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * User: anton
 * Date: 13.11.14
 */

@Entity
@Table(name = "booking_filter")
public class BookingFilter implements Serializable {

    @Id
    @Column(name = "id")
    Integer id;

    @Transient
    String employer;

    @Column(name = "F1")
    Integer f1 = 0;

    @Column(name = "F2")
    Integer f2 = 0;

    @Column(name = "F1FROM")
    Integer f1From;

    @Column(name = "F1TO")
    Integer f1To;


    @Column(name = "F2FROM")
    Date f2From;


    @Column(name = "F2TO")
    Date f2To;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmployer() {
        return employer;
    }

    public void setEmployer(String employer) {
        this.employer = employer;
    }

    public Integer getF1() {
        return f1;
    }

    public void setF1(Integer f1) {
        this.f1 = f1;
    }

    public Integer getF2() {
        return f2;
    }

    public void setF2(Integer f2) {
        this.f2 = f2;
    }

    public Integer getF1From() {
        return f1From;
    }

    public void setF1From(Integer f1From) {
        this.f1From = f1From;
    }

    public Integer getF1To() {
        return f1To;
    }

    public void setF1To(Integer f1To) {
        this.f1To = f1To;
    }

    public Date getF2From() {
        return f2From;
    }

    public void setF2From(Date f2From) {
        this.f2From = f2From;
    }

    public Date getF2To() {
        return f2To;
    }

    public void setF2To(Date f2To) {
        this.f2To = f2To;
    }
}
