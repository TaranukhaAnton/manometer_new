package ua.com.manometer.controller.json;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import ua.com.manometer.model.User;
import ua.com.manometer.service.UserService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/json/users")
public class UserControllerJson {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/map", method = RequestMethod.GET, params = {"count", "page"})
    public
    @ResponseBody
    Map getUsers2(@RequestParam("count") Integer count, @RequestParam("page") Integer page) {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("data", userService.listUser(page, count));
        result.put("totalCount", userService.getUsersCount());
        return result;
    }


    @RequestMapping(value = "/edit", method = RequestMethod.GET, params = {"id"})
    public @ResponseBody User setupForm(@RequestParam(value = "id", required = false) Integer id) {
        return userService.getUser(id);
    }
//
//
//    @RequestMapping("/add")
//    public String processSubmit(@ModelAttribute("user") User user) {
//        boolean hasError = false;
//
//        if (hasError) {
//            return "editUser";
//        } else {
//            userService.addUser(user);
//            status.setComplete();
//            return "redirect:/users/";
//        }
//    }
//
//    @RequestMapping("/delete")
//    public String deleteInvoice(@RequestParam("user_id") Integer id) {
//        userService.removeUser(id);
//        return "redirect:/users/";
//    }


}
