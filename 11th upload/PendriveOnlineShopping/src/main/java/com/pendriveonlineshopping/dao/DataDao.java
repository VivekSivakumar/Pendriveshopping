package com.pendriveonlineshopping.dao;

import java.util.List;

import com.pendriveonlineshopping.model.Product;

public interface DataDao {
	public int insertRow(Product product,String s);

	public List getList();

	public Product getRowById(int pid);

	public int updateRow(Product product);

	public int deleteRow(int pid);

}