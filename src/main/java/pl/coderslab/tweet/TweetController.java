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

    @GetMapping("/displayAllTweets")
    public String displayAllTweets(Model model){
        List<Tweet> tweets = tweetRepo.findAll();
        model.addAttribute("tweets", tweets);
        return "displayAllTweets";
    }

    @GetMapping("/user/search_tweets/{text}")
    public String showTweetsStartingWith(@PathVariable String text, Model model) {
        List<Tweet> tweets = tweetRepo.findTweetsByTweetTextIsStartingWithOrderByCreatedDesc(text);
        model.addAttribute("tweets", tweets);
        return "tweetBegginsAt";
    }

    @GetMapping("/tweet/add")
    public String tweetForm(Model model) {
        List<User> users = userRepo.findAll();
        model.addAttribute("users", users);
        model.addAttribute("tweet", new Tweet());
        return "tweetForm";
    }

    @PostMapping("/tweet/add")
    public String saveTweet(@ModelAttribute Tweet tweet) {
        tweetRepo.save(tweet);
        return "tweetFormSucces";
    }
}
