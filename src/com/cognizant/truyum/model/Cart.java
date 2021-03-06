package com.cognizant.truyum.model;

import java.util.List;
import java.util.ArrayList;

public class Cart {
	private List<MenuItem> menuItemList;
	private double total;

	public Cart() {
		super();
		menuItemList = new ArrayList<>();

	}

	public Cart(List<MenuItem> menuItemList, double total) {
		super();
		this.menuItemList = menuItemList;
		this.total = total;

	}

	public void setMenuItemList(List<MenuItem> menuItemList) {
		this.menuItemList = menuItemList;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public List<MenuItem> getMenuItemList() {
		return menuItemList;
	}

}
