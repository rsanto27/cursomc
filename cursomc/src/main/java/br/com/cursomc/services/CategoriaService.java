package br.com.cursomc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.cursomc.domain.Categoria;
import br.com.cursomc.repositories.CategoriaRepository;
import br.com.cursomc.services.exceptions.ObjectNotFoundException;

@Service
public class CategoriaService {

	@Autowired
	private CategoriaRepository catRepository;
	
	public Categoria buscar(Integer id) {
		return catRepository.findById(id).orElseThrow(() -> new ObjectNotFoundException("Categoria não encontrada @id= " + id));
	}
	
}
