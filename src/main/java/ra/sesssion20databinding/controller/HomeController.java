package ra.sesssion20databinding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ra.sesssion20databinding.model.UserLogin;
import ra.sesssion20databinding.model.UserLoginForm;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @RequestMapping("/form")
    public String form(Model model){
        model.addAttribute("user",new UserLoginForm());
        model.addAttribute("user2",new UserLogin());
        List<String> hobbies = new ArrayList<>();
        hobbies.add("Nam");
        hobbies.add("Nữ");
        model.addAttribute("hobbies",hobbies);
        return "form";
    }
    @PostMapping("/login")
    public  String login(@ModelAttribute("user") UserLoginForm users, Model model){
        model.addAttribute("user",users);
        return "home";
    }
}
