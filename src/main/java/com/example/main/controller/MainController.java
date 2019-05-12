package com.example.main.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author sungang
 * @Title: MainController
 * @ProjectName main
 * @Description: TODO
 * @date 2018-12-0215:42
 */
@RestController
@RequestMapping
public class MainController {


    @GetMapping("hello")
    public String getHello(){
        return "Hello world";
    }
}
