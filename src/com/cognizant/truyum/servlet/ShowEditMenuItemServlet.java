package com.cognizant.truyum.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.dao.MenuItemDaoCollectionImpl;
import com.cognizant.truyum.dao.MenuItemDaoSqlImpl;
import com.cognizant.truyum.model.MenuItem;

/**
 * Servlet implementation class ShowEditMenuItemServlet
 */
@WebServlet({ "/ShowEditMenuItemServlet", "/ShowEditMenuItem" })
public class ShowEditMenuItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowEditMenuItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		try {
			int x = Integer.parseInt(request.getParameter("menuItemId"));	
			MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
			MenuItem menuItem = menuItemDao.getMenuItem(x);
			request.setAttribute("menuItem", menuItem );
			RequestDispatcher rd=request.getRequestDispatcher("edit-menu-item.jsp");
			rd.forward(request, response);
		}catch(Exception e) {
			
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	}
