package ua.com.manometer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ua.com.manometer.model.SecuredUser;
import ua.com.manometer.model.invoice.filter.BookingFilter;
import ua.com.manometer.service.FilterService;

@Controller
@RequestMapping("/filters/booking")
public class BookingFilterController {

    @Autowired
    FilterService filterService;

    @RequestMapping(value = "/get_filter" , method = RequestMethod.GET)
    public
    @ResponseBody
    BookingFilter getFilter() {
        SecuredUser securedUser = (SecuredUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (securedUser != null) {
            BookingFilter filter = securedUser.getBookingFilter();
            System.out.println("filter = " + filter);
            return filter;
        }
        return null;
    }


    @RequestMapping("/save_filter")
    public String saveFilter(BookingFilter bookingFilter) {
        SecuredUser securedUser = (SecuredUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Integer userId = securedUser.getUserId();
        bookingFilter.setId(userId);
        filterService.saveFilter(bookingFilter);
        System.out.println("filter = " + bookingFilter);
        securedUser.setBookingFilter(bookingFilter);
        return "redirect:/bookings/";
    }

}
