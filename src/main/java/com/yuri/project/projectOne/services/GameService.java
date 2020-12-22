package com.yuri.project.projectOne.services;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public class GameService {


	public ArrayList<String> makeCoordinatesbyRow(String letter) {
		ArrayList<String> rowCoordinates = new ArrayList<String>();
		for (Integer i=1; i<11; i++) {
//			String newString = i.toString();
			rowCoordinates.add(letter+i);
		}
		System.out.println(rowCoordinates);
		return rowCoordinates;
	
	}
	
	public void activateCarrier() {
		
	}
	
	
	
}
