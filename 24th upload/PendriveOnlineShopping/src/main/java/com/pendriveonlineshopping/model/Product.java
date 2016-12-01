package com.pendriveonlineshopping.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

	@Entity
	public class Product {
	    @Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		private int pid;
	    @NotEmpty(message="Enter the name ")@Pattern (regexp="[a-z]*")
	    private String name;
	    @NotEmpty(message="Enter the description ")
	    private String description;
	    @Min(value= 1,message="Enter the valid price ")
	    private double price;
	    private String catname;
	    private String spname;
	    
	    @Transient
	    private MultipartFile file;
	    
	    private String img;
	    
		public String getImg() {
			return img;
		}
		public void setImg(String img) {
			this.img = img;
		}
		public String getCatname() {
			return catname;
		}
		public void setCatname(String catname) {
			this.catname = catname;
		}
		public String getSpname() {
			return spname;
		}
		public void setSpname(String spname) {
			this.spname = spname;
		}
	    
		public int getPid() { 
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public MultipartFile getFile() {
			return file;
		}
		public void setFile(MultipartFile file) {
			this.file = file;
		}
	}