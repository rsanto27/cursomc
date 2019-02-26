package br.com.cursomc.domain;

public class ItemPedido {
	
	
	private ItemPedidoPk id = new ItemPedidoPk();
	private Double desconto;
	private Integer quantidade;
	private Double preco;
	
	public ItemPedido() {
		super();
	}

	public ItemPedido(Pedido pedido, Produto produto, Double desconto, Integer quantidade, Double preco) {
		super();
		this.id.setPedido(pedido);
		this.id.setProduto(produto);
		this.desconto = desconto;
		this.quantidade = quantidade;
		this.preco = preco;
	}
	
	
}
