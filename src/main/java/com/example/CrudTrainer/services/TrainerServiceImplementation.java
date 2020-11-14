/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.CrudTrainer.services;

import com.example.CrudTrainer.models.Trainer;
import com.example.CrudTrainer.repository.TrainerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dionisis
 */
@Service
public class TrainerServiceImplementation implements TrainerServiceInterface {
    
    @Autowired
    TrainerRepository trainerRepository;

    @Override
    @Transactional
    public void insertTrainer(Trainer t) {
        trainerRepository.save(t);
    }

    @Override
    public List<Trainer> showTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    @Transactional
    public void deleteTrainerById(int id) {
       trainerRepository.deleteById(id);
    }

    @Override
    public Trainer findTrainer(int id) {
         return trainerRepository.findById(id);
        
    }

    @Override
    @Transactional
    public void updateTrainer(Trainer t) {
        trainerRepository.save(t);
    }



    
}
