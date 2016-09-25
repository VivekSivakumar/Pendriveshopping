package com.pendriveonlineshopping.json;

import java.io.IOException;

import org.codehaus.jackson.map.ObjectMapper;

import com.pendriveonlineshopping.model.Product;

public class ObjectToJson {

	public static void main(String[] a){
        
        Product prod = new Product();
        ObjectMapper mapperObj = new ObjectMapper();
         
        try {
            String jsonStr = mapperObj.writeValueAsString(prod);
            System.out.println(jsonStr);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}