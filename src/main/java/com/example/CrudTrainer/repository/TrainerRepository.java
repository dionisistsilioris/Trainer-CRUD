/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.CrudTrainer.repository;

import com.example.CrudTrainer.models.Trainer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


/**
 *
 * @author Dionisis
 */
@Repository
public interface TrainerRepository extends JpaRepository <Trainer, Integer> {
    
    
//    @Query(value="Select * from trainers", nativeQuery=true)
//    List<Trainer> getByNativeSQL(@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("subject") String subject);
//    
    public Trainer findById(int id);
}
