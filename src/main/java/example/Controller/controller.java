package example.Controller;

import example.domain.AccessoryVo;
import example.domain.UserVo;
import example.service.AccessoryService;
import example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class controller {

    @Autowired
    private UserService userService;

    @Autowired
    private AccessoryService accessoryService;
    @RequestMapping(value = "/")
    public String test(Model model){
        ArrayList<UserVo> userList = userService.selectUser();
        System.out.println(userList);
        ArrayList<AccessoryVo> accessoryList = accessoryService.selectAccessoryAll();
        model.addAttribute("accessoryList",accessoryList);
        model.addAttribute("userList",userList);
        return "index";
    }
    @RequestMapping(value = "/main")
    public String main(Model model)
    {
        return "main";
    }
}