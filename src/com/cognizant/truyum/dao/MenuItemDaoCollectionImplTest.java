 package com.cognizant.truyum.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {

	public static void main(String[] args) throws SQLException {
		try {

			System.out.println("------Admin menu item list------");
			testGetMenuItemListAdmin();

			System.out.println("--------Customer menu item list-------");
			testGetMenuItemListCustomer();
			testModifyMenuItem();

			System.out.println("--------Modify menu item list------");
			testGetMenuItemListAdmin();

		} catch (ParseException e) {

			System.out.println(e);
		}
	}

	public static void testGetMenuItemListAdmin() throws SQLException {
		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		menuItemDao.getMenuItemListAdmin();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListAdmin();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}
	}

	public static void testGetMenuItemListCustomer() throws  SQLException {
		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}

	}

	public static void testModifyMenuItem() throws SQLException, ParseException {
		MenuItem m = new MenuItem(5, "Dairy milk", 99.0f, true, DateUtil.convertToDate("15/03/2017"), " Course", true);
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		menuItemDao.modifyMenuItem(m);
	}
}
	
