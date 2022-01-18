package awscicd.cicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/users")
public class UserController {
    private ArrayList<String> userList = new ArrayList<>();

    {
        this.userList.add("Nathan");
        this.userList.add("User 2");
        this.userList.add("User 3");
    }

    @GetMapping("/list")
    public List<String> getUsers() {
        return userList;
    }

    @PostMapping("/add")
    public String addUser(@RequestBody UserRequest user) {
        if(Objects.isNull(user) || Objects.isNull(user.getUserName()) || user.getUserName().length() == 0) {
            throw new RuntimeException("User cann't empty");
        }
        System.out.println("Data in userList: " + userList.toString());
        this.userList.add(user.getUserName());
        return user.getUserName();
    }

}
