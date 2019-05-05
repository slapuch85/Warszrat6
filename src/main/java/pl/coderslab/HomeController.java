package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.repository.UserRepo;
import pl.coderslab.user.User;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    UserRepo userRepo;

    @RequestMapping("/")
    public String homepage(Model model){
        List<User> users = userRepo.findAll();
        model.addAttribute("users", users);
        return "index";
    }
}
