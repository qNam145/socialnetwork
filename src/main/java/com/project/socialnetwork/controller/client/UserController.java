package com.project.socialnetwork.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.socialnetwork.domain.Account;
import com.project.socialnetwork.service.AccountService;
import com.project.socialnetwork.service.RoleService;

@Controller
public class UserController {
    private AccountService accountService;
    private RoleService roleService;

    public UserController(AccountService accountService, RoleService roleService) {
        this.accountService = accountService;
        this.roleService = roleService;
    }

    // Login

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        model.addAttribute("loginAccount", new Account());
        return "client/page/auth/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("loginAccount") Account account) {
        if (accountService.findByEmail(account.getEmail()) != null) {
            if (accountService.findByEmail(account.getEmail()).getPassword().equals(account.getPassword())) {
                return "redirect:/";
            }
        }
        System.out.println(account);
        return "redirect:/login";
    }

    // Register

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("regAccount", new Account());
        return "client/page/auth/register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute("regAccount") Account account) {
        account.setRole(roleService.getRoleByName("USER"));
        // accountService.saveAccount(account);
        System.out.println(account);
        return "redirect:/login";
    }

    @GetMapping("/profile/edit-profile")
    public String getEditProfilePage(Model model) {
        model.addAttribute("editAccount", new Account());
        return "client/page/user/edit-profile";
    }
}
