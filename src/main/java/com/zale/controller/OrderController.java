package com.zale.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("order")
public class OrderController {
    @RequiresRoles(value={"admin","user"})// have admin and user at same time
    @RequiresPermissions("user:update:01")
    @RequestMapping("save")
    public String save(){
        System.out.println("Enter method");
        return "redirect:/index.jsp";
    }
}
