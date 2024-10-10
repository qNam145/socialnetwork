package com.project.socialnetwork.repository;

import com.project.socialnetwork.domain.Account;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long> {
    Page<Account> findAll(Pageable pageable);
    Account save(Account account);
}
