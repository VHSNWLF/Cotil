package com.example.SimuladoAPI.repository;

import com.example.SimuladoAPI.model.PessoaModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoaRepository extends JpaRepository<PessoaModel, Integer> {
}
