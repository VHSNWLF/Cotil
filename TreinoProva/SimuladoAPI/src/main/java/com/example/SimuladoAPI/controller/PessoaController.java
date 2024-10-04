package com.example.SimuladoAPI.controller;

import com.example.SimuladoAPI.model.PessoaModel;
import com.example.SimuladoAPI.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping ("/Pessoa")
public class PessoaController {
    @Autowired
    PessoaRepository pessoaRepo;

    @GetMapping
    public List<PessoaModel> todos (){
        return pessoaRepo.findAll();
    }

    @PostMapping("/save/{nome}/{email}/{senha}")
    public PessoaModel addPessoa(@PathVariable String nome, @PathVariable String email, @PathVariable String senha){
        PessoaModel pessoa = new PessoaModel();
        pessoa.setNome(nome);
        pessoa.setEmail(email);
        pessoa.setSenha(senha);
        return pessoaRepo.save(pessoa);
    }
}
