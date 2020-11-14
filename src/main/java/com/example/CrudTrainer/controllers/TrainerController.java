/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.CrudTrainer.controllers;

import com.example.CrudTrainer.models.Trainer;
import com.example.CrudTrainer.services.TrainerServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Dionisis
 */
@Controller
public class TrainerController {
    
    @Autowired
    TrainerServiceInterface  trainerServiceInterface;
    
    @GetMapping("/preinserttrainer")
    public String form(ModelMap model){
        model.addAttribute("newtrainer", new Trainer());
        return "trainerform";
    
    }
    
    @PostMapping("doinserttrainer")
    public String insertTrainer(ModelMap model,
            @ModelAttribute("newtrainer")Trainer t ){
    trainerServiceInterface.insertTrainer(t);
    model.addAttribute("trainer", t);
    return "result";
    }
    
    @GetMapping("/showtrainers")
    public String showTrainers(ModelMap model){
    List <Trainer> trainerList=trainerServiceInterface.showTrainers();
        System.out.println(trainerList.get(0).getIdtrainer());
    model.addAttribute("trainers", trainerList);
    return "trainertable";
    }
    
    @PostMapping("/deletetrainer")
    public String deleteTrainer(int idtrainer){
    trainerServiceInterface.deleteTrainerById(idtrainer);
    return "result";
    }
    
   @PostMapping("/findtrainer") 
    public String findTrainer(ModelMap model, int idtrainer){
    Trainer t=trainerServiceInterface.findTrainer(idtrainer);
    model.addAttribute("updatetrainer", t);
    return "updateform";
    }
    
    @PostMapping ("/updatetrainer")
    public String updateTrainer(ModelMap model,
            @ModelAttribute("updatetrainer")Trainer t){
    trainerServiceInterface.updateTrainer(t);
    model.addAttribute("trainer", t );
    return "result";
    }
  
}
