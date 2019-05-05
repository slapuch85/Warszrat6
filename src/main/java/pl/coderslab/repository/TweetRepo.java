package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.tweet.Tweet;
import pl.coderslab.user.User;

import java.util.List;

public interface TweetRepo extends JpaRepository<Tweet, Long> {
    List<Tweet> findByUser(User user);

    List<Tweet> findTweetsByTweetTextIsStartingWithOrderByCreatedDesc(String text);

}
