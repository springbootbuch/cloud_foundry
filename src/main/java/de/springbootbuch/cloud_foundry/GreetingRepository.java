package de.springbootbuch.cloud_foundry;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GreetingRepository extends JpaRepository<GreetingEntity, Integer> {
}
