package com.yuri.project.projectOne.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuri.project.projectOne.services.GameService;

@Controller
public class MainController {

	private GameService gameService;

	public MainController(GameService gameService) {
		this.gameService = gameService;
	}
	
	@RequestMapping("/")
	public String indexPage(Model model) {
		ArrayList<String> rowCoordinatesA = gameService.makeCoordinatesbyRow("A");
		ArrayList<String> rowCoordinatesB = gameService.makeCoordinatesbyRow("B");
		ArrayList<String> rowCoordinatesC = gameService.makeCoordinatesbyRow("C");
		ArrayList<String> rowCoordinatesD = gameService.makeCoordinatesbyRow("D");
		ArrayList<String> rowCoordinatesE = gameService.makeCoordinatesbyRow("E");
		ArrayList<String> rowCoordinatesF = gameService.makeCoordinatesbyRow("F");
		ArrayList<String> rowCoordinatesG = gameService.makeCoordinatesbyRow("G");
		ArrayList<String> rowCoordinatesH = gameService.makeCoordinatesbyRow("H");
		ArrayList<String> rowCoordinatesI = gameService.makeCoordinatesbyRow("I");
		ArrayList<String> rowCoordinatesJ = gameService.makeCoordinatesbyRow("J");		
		model.addAttribute("rowCoordinatesA", rowCoordinatesA);
		model.addAttribute("rowCoordinatesB", rowCoordinatesB);
		model.addAttribute("rowCoordinatesC", rowCoordinatesC);
		model.addAttribute("rowCoordinatesD", rowCoordinatesD);
		model.addAttribute("rowCoordinatesE", rowCoordinatesE);
		model.addAttribute("rowCoordinatesF", rowCoordinatesF);
		model.addAttribute("rowCoordinatesG", rowCoordinatesG);
		model.addAttribute("rowCoordinatesH", rowCoordinatesH);
		model.addAttribute("rowCoordinatesI", rowCoordinatesI);
		model.addAttribute("rowCoordinatesJ", rowCoordinatesJ);
		
//		ArrayList<String> gridlist = new ArrayList<String>();
//		String[] rowLetters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
//		for (Integer i=0; i<rowLetters.length; i++) {
//			for (Integer j=0; j<11; j++) {
//				gridlist.add(rowLetters[i]+j);
//			}			
//		}
//		System.out.println(gridlist);
//		model.addAttribute("coordinate", gridlist);
		
		
				
		
		return "index.jsp";
	}
}
