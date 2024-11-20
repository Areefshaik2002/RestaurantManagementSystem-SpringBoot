package com.project.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Item;
import com.project.service.ItemService;
@Controller
public class ItemController {
	@Autowired
	private ItemService service;
	
	@RequestMapping("/")
	public String getIndex() {
		return "index.jsp";
	}
	@RequestMapping("/save")
	public ModelAndView saveItem(@ModelAttribute Item item) {
		Item response = service.save(item);
		ModelAndView mv = new ModelAndView("additem.jsp");
		if(response != null) {
			mv.addObject("response","Item added successfully...");
		}
		else {
			mv.addObject("response","Item not added...");
		}
		return mv;
	}
	@RequestMapping("/findbyid")
	public ModelAndView searchItem(@RequestParam Integer id) {
		Item item = service.findById(id);
		ModelAndView mv;
		if(item.getId()== 0) {
			mv = new ModelAndView("searchitem.jsp");
			mv.addObject("response", "Item not found for given id");
		}
		else {
			mv = new ModelAndView("searchitemresult.jsp");
			mv.addObject("item", item);
		}
		return mv;
	}

	@RequestMapping("/findAll")
	public ModelAndView getAllItem() {
		List<Item> items = service.findAll();
		ModelAndView mv = new ModelAndView("viewitemresult.jsp");
		mv.addObject("itemlist",items);
		return mv;
	}
	
	@RequestMapping("edititem")
	public ModelAndView updateItem(@ModelAttribute Item item) {
		Item response = service.update(item);
		ModelAndView mv = new ModelAndView("edititem.jsp");
		if(response!=null) {
			mv.addObject("response","Item updated...");
		}
		else {
			mv.addObject("response","Item not updated...");
		}
		return mv;		
	}
	
	@RequestMapping("deletebyid")
	public ModelAndView deleteItem(@RequestParam Integer id) {
		service.deleteById(id);
		ModelAndView mv = new ModelAndView("findAll");
		return mv;	
	}
	
}
