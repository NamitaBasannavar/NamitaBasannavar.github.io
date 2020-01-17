package com.cognizant.truyum.dao;
import java.util.List;
import com.cognizant.truyum.model.MenuItem;
public class CartDaoSqlImplTest {
                public static void main(String[] args) throws CartEmptyException {
                                testAddCartItems();
                                testRemoveCartItems();
                                testGetAllCartItems();
                }
                static void testAddCartItems() throws CartEmptyException {
                                CartDaoSqlImpl cartDaoSqlImpl = new CartDaoSqlImpl();
                                CartDao cartDao = cartDaoSqlImpl;
                                cartDao.addCartItem(2, 1);
                                cartDao.addCartItem(2, 2);
                                List<MenuItem> menuItemList = cartDao.getAllCartItems(1);
                }
                static void testGetAllCartItems() throws CartEmptyException {
                                CartDaoSqlImpl cartDaoSqlImpl = new CartDaoSqlImpl();
                                CartDao cartDao = cartDaoSqlImpl;
                                List<MenuItem> menuItemList = cartDao.getAllCartItems(1);
                                for (MenuItem x : menuItemList) {
                    				System.out.println(x);
                    			}
                }
                static void testRemoveCartItems() throws CartEmptyException {
                                CartDaoSqlImpl cartDaoSqlImpl = new CartDaoSqlImpl();
                                CartDao cartDao = cartDaoSqlImpl;
                                try {
                                                cartDao.removeCartItem(2, 1);
                                                List<MenuItem> menuItemList = cartDao.getAllCartItems(1L);
                                } catch (Exception e) {
                                                throw new CartEmptyException("Cart is empty");
                                }
                }
}
