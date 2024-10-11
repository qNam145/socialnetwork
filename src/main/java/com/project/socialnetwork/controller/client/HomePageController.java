package com.project.socialnetwork.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.socialnetwork.domain.Post;
import com.project.socialnetwork.service.PostService;
import com.project.socialnetwork.service.UploadService;

@Controller
public class HomePageController {

    private final PostService postService;
    private final UploadService uploadService;

    public HomePageController(PostService postService, UploadService uploadService) {
        this.postService = postService;
        this.uploadService = uploadService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("listPost", postService.getAllPosts());
        return "client/page/homepage/index";
    }

    @GetMapping("/create-post")
    public String getCreatePostPage(Model model) {
        model.addAttribute("newPost", new Post());
        return "client/page/homepage/create-post";
    }

    @PostMapping("/create-post")
    public String createPost(@ModelAttribute("newPost") Post post, @RequestParam("postFile") MultipartFile file) {
        String imgPath = uploadService.saveUploadFile(file, "post");
        post.setImage(imgPath);
        System.out.println(post);
        postService.savePost(post);
        return "redirect:/";
    }
}
