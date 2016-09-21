package com.pendriveonlineshopping.dao;

import java.util.List; 

import com.pendriveonlineshopping.model.Category;

public interface CategoryDao {
 public int insertRow(Category category);

 public List getList();

 public Category getRowById(int catid);

 public int updateRow(Category category);

 public int deleteRow(int catid);

}
