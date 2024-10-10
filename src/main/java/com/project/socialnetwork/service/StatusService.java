package com.project.socialnetwork.service;

import com.project.socialnetwork.domain.AccountStatus;
import com.project.socialnetwork.repository.StatusRepository;
import org.springframework.stereotype.Service;

@Service
public class StatusService {

    private final StatusRepository statusRepository;

    public StatusService(StatusRepository statusRepository) {
        this.statusRepository = statusRepository;
    }

    public AccountStatus findById(Long id) {
        return statusRepository.findById(id).orElse(null);
    }
}
