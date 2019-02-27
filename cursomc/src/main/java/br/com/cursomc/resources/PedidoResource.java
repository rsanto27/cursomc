package br.com.cursomc.resources;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import br.com.cursomc.domain.Categoria;
import br.com.cursomc.domain.Pedido;
import br.com.cursomc.services.CategoriaService;
import br.com.cursomc.services.PedidoService;

@RestController
@RequestMapping(value="/pedidos")
public class PedidoResource {
	
	@Autowired
	private PedidoService pedidoService;

	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public ResponseEntity<?> listar(@PathVariable Integer id) {
		Pedido pedido = pedidoService.buscar(id);
		return ResponseEntity.ok(pedido);
	}
}
