package com.example.demoVitor.repository;

import com.example.demoVitor.model.AlunoModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlunoRepository extends JpaRepository <AlunoModel, Integer> {

}
