/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.CrudTrainer.services;

import com.example.CrudTrainer.models.Trainer;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dionisis
 */

public interface TrainerServiceInterface {
     public void insertTrainer(Trainer t);
     
     public List<Trainer> showTrainers();
    
     public void deleteTrainerById(int id);
     
     public Trainer findTrainer(int id);
     
     public void updateTrainer(Trainer t);
}
