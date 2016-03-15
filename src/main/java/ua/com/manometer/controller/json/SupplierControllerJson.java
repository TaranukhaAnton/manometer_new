package ua.com.manometer.controller.json;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import ua.com.manometer.model.Supplier;
import ua.com.manometer.model.User;
import ua.com.manometer.service.SupplierService;
import ua.com.manometer.service.UserService;

import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/json/suppliers")
public class SupplierControllerJson {
    @Autowired
    private SupplierService supplierService;

    @RequestMapping(value = "/map", method = RequestMethod.GET, params = {"count", "page"})
    public
    @ResponseBody
    Map getSuppliers(@RequestParam("count") Integer count, @RequestParam("page") Integer page) {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("data", supplierService.listSupplier(page, count));
        result.put("totalCount", supplierService.getSupplierCount());
        return result;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET, params = {"id"})
    public @ResponseBody
    Supplier getSupplier(@RequestParam(value = "id", required = false) Integer id) {
        return supplierService.getSupplier(id);
    }
}
