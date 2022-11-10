package com.infinite.inventoryyy;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



public class InventoryDAO {
	SessionFactory sessionFactory;
	
	public String vendorId() {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		
		Criteria criteria = session.createCriteria(Vendor.class);
		List<Vendor> vendorList = criteria.list();
		
		String vendorid = vendorList.get(vendorList.size() - 1).getVendorid();
		
		vendorid = String.format("%03d", Integer.parseInt(vendorid.substring(1))+1);
		vendorid = "V"+ vendorid;
		
		return vendorid;
	}
	public String addVendor(Vendor vendor) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		String vendorid = vendorId();
		vendor.setVendorid(vendorId());
		Transaction transaction = session.beginTransaction();
		session.save(vendor);
		transaction.commit();
		return "Vendor Added Successsfully...";

	}
	public List<Vendor> showVendor() {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		
		Criteria criteria = session.createCriteria(Vendor.class);
		List<Vendor> vendorList = criteria.list();
		
		return vendorList;
	}
	
	public String update(Vendor vendor){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(vendor);
		transaction.commit();
		return "Vendor updated Successsfully...";
	
		
	}
	
	
	public Vendor search(String vendorid){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from Vendor where vendorId = :vendorId").setParameter("vendorId", vendorid);
		
		Vendor vendor = (Vendor) query.list().get(0);
		
		return vendor;
	}
}
