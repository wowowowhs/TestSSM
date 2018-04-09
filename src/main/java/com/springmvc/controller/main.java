package com.springmvc.controller;

import com.springmvc.pojo.Admin;
import com.springmvc.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import com.springmvc.utils.*;

@Controller
@RequestMapping("/user")
public class main {

    @Resource
    AdminService adminService;
    @RequestMapping("/")
    @ResponseBody
    public String index(){
        return "hello world";
    }

    @RequestMapping(value = "/generate",method = RequestMethod.GET)
    @ResponseBody
    public String generate() throws Exception {

        //生成Excel表
        System.out.println("进入/gererate==================");
        util e = new util();
        e.generate();
        System.out.println("/generate 完成=================");
        return "生成Excel";

    }

    @RequestMapping(value="/func", method = RequestMethod.GET)
    //@ResponseBody
    public String func(){
        return "function" ;
    }

    @RequestMapping(value = "/admin",method = RequestMethod.POST)
    @ResponseBody
    public int insertUser(Admin admin){
       return adminService.insertAdmin(admin);

    }
    @RequestMapping(value = "/admin/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Admin getUser(@PathVariable  Integer id){
        return adminService.getAdmin(id);

    }
}
