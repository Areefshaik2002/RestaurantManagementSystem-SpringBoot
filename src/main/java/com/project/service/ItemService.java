package com.project.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Item;
import com.project.repository.ItemRepository;
@Service
public class ItemService {
	@Autowired
	private ItemRepository repository;

	public Item save(Item item) {
		return repository.save(item);
	}

	public Item findById(Integer id) {
		return repository.findById(id).orElse(new Item());
	}

	public List<Item> findAll() {		
		return repository.findAll();
	}

	public Item update(Item item) {
		return repository.save(item);
	}

	public void deleteById(Integer id) {
		 repository.deleteById(id);
	}

	
}
