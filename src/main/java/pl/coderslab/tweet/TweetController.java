package pl.coderslab.tweet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.repository.TweetRepo;
import pl.coderslab.repository.UserRepo;
import pl.coderslab.user.User;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import java.util.List;

@Controller
@Transactional
public class TweetController {

    @Autowired
    TweetRepo tweetRepo;

    @Autowired
    UserRepo userRepo;

    @PostMapping("/tweetList")
    public String showUserTweets(@RequestParam(name = "id") Long id, Model model) {
        User user = userRepo.findOne(id);
        List<Tweet> tweets = tweetRepo.findByUser(user);
        model.addAttribute("tweets", tweets);
        model.addAttribute("user", user);
        System.out.println("id :" + id);
        return "usersTweets";
    }

    @GetMapping("/displayAllTweet")
    public String displayAllTweets(Model model){
        model.addAttribute("tweet", new Tweet());
        return "displayAllTweets";
    }


   /* @GetMapping("/tweet/add")
    public String tweetForm(Model model) {
        List<User> users = userRepo.findAll();
        model.addAttribute("users", users);
        model.addAttribute("tweet", new Tweet());
        return "tweetForm";
    }*/

    @PostMapping("/tweet/add")
    public String saveTweet(@ModelAttribute Tweet tweet) {
        tweetRepo.save(tweet);
        return "redirect:/displayAllTweet";
        }

    @ModelAttribute("allTweets")
    public List<Tweet> getAllTweets(){
        List<Tweet> allTweets = tweetRepo.findAll();
        return allTweets;
    }

    @ModelAttribute("allUsers")
    public List<User> getAllUsers(){
        List<User> allUsers = userRepo.findAll();
        return allUsers;
    }
}
