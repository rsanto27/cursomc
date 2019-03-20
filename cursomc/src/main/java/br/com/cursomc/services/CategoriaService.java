package br.com.cursomc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import br.com.cursomc.domain.Categoria;
import br.com.cursomc.repositories.CategoriaRepository;
import br.com.cursomc.services.exceptions.DataIntegrityException;
import br.com.cursomc.services.exceptions.ObjectNotFoundException;

@Service
public class CategoriaService {

	@Autowired
	private CategoriaRepository catRepository;
	
	public Categoria find(Integer id) {
		return catRepository.findById(id).orElseThrow(() -> new ObjectNotFoundException("Categoria não encontrada @id= " + id));
	}

	public Categoria insert(Categoria obj) {
		obj.setId(null);
		return catRepository.save(obj);
	}
	
	public Categoria update(Categoria obj) {
		find(obj.getId());
		return catRepository.save(obj);
	}
	
	public void delete(Integer id) {
		find(id);
		try {
			catRepository.deleteById(id);
		} catch (DataIntegrityViolationException e) {
			throw new DataIntegrityException("Não foi possível excluir uma categoria que possui produtos");
		}
	}
	
	public List<Categoria> findAll(){
		return catRepository.findAll();
	}
}
