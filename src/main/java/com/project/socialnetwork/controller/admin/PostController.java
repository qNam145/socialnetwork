package com.project.socialnetwork.controller.admin;

import com.project.socialnetwork.domain.Post;
import com.project.socialnetwork.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@Controller
public class PostController {

    private final PostService postService;

    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/admin/posts")
    public String getPostsPage(@ModelAttribute Model model) {
        List<Post> posts = postService.getAllPosts();
        return "admin/page/post/posts";
    }
}
