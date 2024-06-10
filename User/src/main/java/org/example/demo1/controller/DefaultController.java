package org.example.demo1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DefaultController {

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/checkout")
    public String checkout() {
        return "checkout";
    }

    @GetMapping("/coming_soon")
    public String comingSoon() {
        return "coming_soon";
    }

    @GetMapping("/contact_us")
    public String contactUs() {
        return "contact_us";
    }

    @GetMapping("/faq")
    public String faq() {
        return "faq";
    }

    @GetMapping("/favorites")
    public String favorites() {
        return "favorites";
    }

    @GetMapping("/forgot_password")
    public String forgotPassword() {
        return "forgot_password";
    }

    @GetMapping("/location")
    public String location() {
        return "location";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/maintence")
    public String maintence() {
        return "maintence";
    }

    @GetMapping("/map")
    public String map() {
        return "map";
    }

    @GetMapping("/most_popular")
    public String mostPopular() {
        return "most_popular";
    }

    @GetMapping("/my_order")
    public String myOrder() {
        return "my_order";
    }

    @GetMapping("/not_found")
    public String notFound() {
        return "not_found";
    }

    @GetMapping("/offers")
    public String offers() {
        return "offers";
    }

    @GetMapping("/privacy")
    public String privacy() {
        return "privacy";
    }

    @GetMapping("/profile")
    public String profile() {
        return "profile";
    }

    @GetMapping("/restaurant")
    public String restaurant() {
        return "restaurant";
    }

    @GetMapping("/search")
    public String search() {
        return "search";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @GetMapping("/status_canceled")
    public String statusCanceled() {
        return "status_canceled";
    }

    @GetMapping("/status_complete")
    public String statusComplete() {
        return "status_complete";
    }

    @GetMapping("/status_onprocess")
    public String statusOnProcess() {
        return "status_onprocess";
    }

    @GetMapping("/successful")
    public String successful() {
        return "successful";
    }

    @GetMapping("/terms")
    public String terms() {
        return "terms";
    }

    @GetMapping("/trending")
    public String trending() {
        return "trending";
    }

    @GetMapping("/verification")
    public String verification() {
        return "verification";
    }
}
