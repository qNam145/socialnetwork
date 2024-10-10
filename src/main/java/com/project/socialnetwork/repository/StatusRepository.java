package com.project.socialnetwork.repository;

import com.project.socialnetwork.domain.AccountStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatusRepository extends JpaRepository<AccountStatus, Long> {
}
