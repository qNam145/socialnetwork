package com.project.socialnetwork.service;

import com.project.socialnetwork.domain.Account;
import com.project.socialnetwork.domain.Role;
import com.project.socialnetwork.repository.AccountRepository;
import com.project.socialnetwork.repository.RoleRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AccountService {
    private final AccountRepository accountRepository;
    private final RoleRepository roleRepository;

    public AccountService(AccountRepository accountRepository, RoleRepository roleRepository) {
        this.accountRepository = accountRepository;
        this.roleRepository = roleRepository;
    }

    public Account saveAccount(Account account) {
        return accountRepository.save(account);
    }

    public List<Account> saveAll(List<Account> accounts) {
        for (Account account : accounts) {
            accountRepository.save(account);
        }
        return null;
    }

    public Page<Account> findAll(Pageable pageable) {
        return accountRepository.findAll(pageable);
    }

    public List<Account> findAll() {
        return accountRepository.findAll();
    }

    public Account findById(Long id) {
        return accountRepository.findById(id).orElseThrow();
    }

    public Account delete(Long id) {
        Account account = accountRepository.findById(id).orElseThrow();
        accountRepository.delete(account);
        return account;
    }

    public long getTotalPages() {
        return (long)Math.ceil(accountRepository.count()/20f);
    }

}
