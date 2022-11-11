package com.infinite.inventoryyy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vendor")
public class Vendor {
	@Id
	@Column(name="vendorid")
	private String vendorid;
	@Column(name="vendorname")
	private String vendorname;
	@Column(name="vendorPhoneNo")
	private String  vendorPhoneNo;
	@Column(name="address1")
	private String address1;
	@Column(name="address2")
	private String  address2;
	@Column(name="city")
	private String  city;
	@Column(name="zipCode")
	private String  zipCode;
	
	public String getVendorid() {
		return vendorid;
	}
	public void setVendorid(String vendorid) {
		this.vendorid = vendorid;
	}
	public String getVendorname() {
		return vendorname;
	}
	public void setVendorname(String vendorname) {
		this.vendorname = vendorname;
	}
	public String getVendorPhoneNo() {
		return vendorPhoneNo;
	}
	public void setVendorPhoneNo(String vendorPhoneNo) {
		this.vendorPhoneNo = vendorPhoneNo;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	
	@Override
	public String toString() {
		return "Vendor [vendorid=" + vendorid + ", vendorname=" + vendorname + ", vendorPhoneNo=" + vendorPhoneNo
				+ ", address1=" + address1 + ", address2=" + address2 + ", city=" + city + ", zipCode=" + zipCode + "]";
	}
	
	public Vendor(String vendorid, String vendorname, String vendorPhoneNo, String address1, String address2,
			String city, String zipCode) {
		this.vendorid = vendorid;
		this.vendorname = vendorname;
		this.vendorPhoneNo = vendorPhoneNo;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.zipCode = zipCode;
	}
	
	public Vendor() {
		
	}
	
}
