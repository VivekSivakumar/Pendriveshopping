package com.pendriveonlineshopping.services;

import java.util.List;


import com.pendriveonlineshopping.model.Product;

public interface DataService {
 public int insertRow(Product product,String S);

 public List getList();

 public Product getRowById(int pid);

 public int updateRow(Product product);

 public int deleteRow(int pid);

}
