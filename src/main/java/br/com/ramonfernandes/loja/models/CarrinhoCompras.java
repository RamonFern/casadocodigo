package br.com.ramonfernandes.loja.models;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.BinaryOperator;

import org.springframework.stereotype.Component;

@Component
public class CarrinhoCompras {

	private Map<CarrinhoItem, Integer> itens = new LinkedHashMap<CarrinhoItem, Integer>();
	
	public void add(CarrinhoItem item){
		itens.put(item, getQuantidade(item) + 1);
	}

	private int getQuantidade(CarrinhoItem item) {
		if(!itens.containsKey(item)){
			itens.put(item, 0);
		}
		return 0;
	}
	/*
	public int getQuantidade(){
		return itens.values().size();
	}*/

	public int getQuantidade(){
		return itens.values().stream().reduce(0, (proximo, acumulador)->proximo + acumulador);
	}
}
