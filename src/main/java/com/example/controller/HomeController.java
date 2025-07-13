package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 主页控制器
 * 
 * @author Your Name
 * @version 1.0.0
 */
@Controller
public class HomeController {

    /**
     * 首页路由
     * 
     * @param model 模型对象
     * @return 视图名称
     */
    @GetMapping("/")
    public String home(Model model) {
        // 添加页面数据
        model.addAttribute("title", "欢迎来到我的个人引导页");
        model.addAttribute("name", "张三");
        model.addAttribute("title", "全栈开发工程师");
        model.addAttribute("description", "热爱编程，专注于Web开发和人工智能技术");
        
        return "index";
    }

    /**
     * 关于页面
     * 
     * @param model 模型对象
     * @return 视图名称
     */
    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("title", "关于我");
        return "about";
    }

    /**
     * 项目展示页面
     * 
     * @param model 模型对象
     * @return 视图名称
     */
    @GetMapping("/projects")
    public String projects(Model model) {
        model.addAttribute("title", "项目展示");
        return "projects";
    }

    /**
     * 联系方式页面
     * 
     * @param model 模型对象
     * @return 视图名称
     */
    @GetMapping("/contact")
    public String contact(Model model) {
        model.addAttribute("title", "联系我");
        return "contact";
    }
} 