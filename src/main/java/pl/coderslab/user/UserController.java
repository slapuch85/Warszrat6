package pl.coderslab.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.repository.UserRepo;

import javax.transaction.Transactional;
import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;

@Controller
@Transactional
public class UserController {

    @Autowired
    UserRepo userRepo;

    @GetMapping("/user/add")
    public String userForm(Model model) {
        model.addAttribute("user", new User());
        return "userForm";
    }

    @PostMapping("/user/add")
    public String getUserForm(@ModelAttribute @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "userForm";
        }
        userRepo.save(user);
        return "userFormSucces";

    }

    @GetMapping("/user/all")
    public String showAllUsers(Model model) {
        List<User> allUsers = userRepo.findAll();
        model.addAttribute("allUsers", allUsers);
        return "displayAllUsers";
    }

    @PostMapping("/user/remove")
    public String removeUser(@RequestParam(name = "id") Long id, Model model) {
        userRepo.delete(id);
        List<User> allUsers = userRepo.findAll();
        model.addAttribute("allUsers", allUsers);
        return "displayAllUsers";
    }

    @PostMapping("/user/edit")
    public String editUser(@RequestParam(name = "id") Long id, Model model) {
        User userToEdit = userRepo.findOne(id);
        model.addAttribute("user", userToEdit);
        model.addAttribute("idEditedUser", id);
        return "editUser";
    }

    @PostMapping("/user/merge")
    public String mergeUser(@ModelAttribute @Valid User user, Long id, BindingResult result) {
        userRepo.editUser(id, user);
        return "userFormSucces";
    }


}
