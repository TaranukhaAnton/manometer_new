package ua.com.manometer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ua.com.manometer.model.SecuredUser;
import ua.com.manometer.model.invoice.filter.InvoiceFilter;
import ua.com.manometer.service.FilterService;

@Controller
@RequestMapping("/filters/invoice")
public class InvoiceFilterController {

    @Autowired
    FilterService filterService;

    @RequestMapping(value = "/get_filter" , method = RequestMethod.GET)
    public
    @ResponseBody
    InvoiceFilter getFilter() {
        SecuredUser securedUser = (SecuredUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (securedUser != null) {
            InvoiceFilter invoiceFilter = securedUser.getInvoiceFilter();
            System.out.println("invoiceFilter = " + invoiceFilter);
            return invoiceFilter;
        }
        return null;
    }


    @RequestMapping("/save_filter")
    public String saveFilter(InvoiceFilter invoiceFilter) {
        SecuredUser securedUser = (SecuredUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        filterService.saveFilter(invoiceFilter);
        securedUser.setInvoiceFilter(invoiceFilter);
        return "redirect:/invoices/";
    }

}
