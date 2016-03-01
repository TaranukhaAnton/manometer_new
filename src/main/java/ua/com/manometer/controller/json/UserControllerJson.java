package ua.com.manometer.controller.json;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
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

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public
    @ResponseBody
    List getUsers() {
//        Map<String, Object> result = new HashMap<String, Object>();
//        result.put("data",userService.listUser().subList(0,10));
//        result.put("totalCount",userService.getUsersCount());
        return userService.listUser().subList(0, 10);
    }


    @RequestMapping(value = "/map", method = RequestMethod.GET, params = {"count", "page"})
    public
    @ResponseBody
    Map getUsers2(@RequestParam("count") Integer count, @RequestParam("page") Integer page) {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("data", userService.listUser(page, count));
        result.put("totalCount", userService.getUsersCount());
        return result;
    }


//    return (Number) session.createCriteria("Book").setProjection(Projections.rowCount()).uniqueResult();

//    @RequestMapping("/edit")
//    public String setupForm(@RequestParam(value = "id", required = false) Integer id, ModelMap model) {
//        if (id != null) {
//            User user = userService.getUser(id);
//            model.put("user", user);
//        } else {
//            model.put("user", new User());
//        }
//        return "editUser";
//    }
//
//
//    @RequestMapping("/add")
//    public String processSubmit(@ModelAttribute("user") User user,  SessionStatus status) {
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
