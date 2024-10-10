package com.project.socialnetwork.service;

import com.project.socialnetwork.domain.Role;
import com.project.socialnetwork.repository.RoleRepository;
import org.springframework.stereotype.Service;

@Service
public class RoleService {

    private final RoleRepository roleRepository;

    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role getRoleByName(String name) {
        return roleRepository.getRoleByName(name);
    }

    public Role getRoleById(Long id) {
        return roleRepository.getRoleById(id);
    }

    public Role findByName(String name) {
        return roleRepository.getRoleByName(name);
    }
}
