package com.niit.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table

public class Supplier {
	@Id
	@GeneratedValue
	int supplierId;
	String supplierName;
	String supplierDesc;
	 @OneToMany(mappedBy="supplier")
     private List<Product> products;


	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierDesc() {
		return supplierDesc;
	}
	public void setSupplierDesc(String supplierDesc) {
		this.supplierDesc = supplierDesc;
	}
	public List<Product> getProducts() {
		return products;
	}
	    public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	
}
