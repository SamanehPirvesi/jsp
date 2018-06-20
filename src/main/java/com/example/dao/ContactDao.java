package com.example.dao;



import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.example.model.Contact;
import com.example.utility.HibernateUtil;


public class ContactDao {

	// 1- Create

	public boolean createContact(Contact c) {
		boolean res = false;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			session.persist(c);

			tx.commit();
			res = true;
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return res;

	}
	public Contact getContactById(long id) {
		Contact c= null;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			c=session.get(Contact.class, id);

			tx.commit();
			
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return c;

	}
	public List<Contact> getContactByName(String name) {
		List<Contact> list = null;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			Query query=session.createQuery("from Contact where name=:var");
			query.setParameter("var", name);
             list=query.getResultList();
			tx.commit();
			
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return list;

	}
	public boolean updateContact(Contact c ){
		boolean res = false;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			session.update(c);

			tx.commit();
			res = true;
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return res;

	}
	public boolean updateContactById(long id , String name) {
		boolean res = false;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			Query query=session.createQuery("UPDATE Contact SET name=:firstname WHERE contact_id=:idnumber");
			query.setParameter("firstname",name);
			query.setParameter("idnumber", id);
		query.executeUpdate();
			res = true;
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return res;

	}
	public boolean deleteContact(Contact c) {
		boolean res = false;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			session.delete(c);

			tx.commit();
			res = true;
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return res;

	}
	public boolean deleteContactByName(String name) {
		boolean res = false;
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();

			Query query=session.createQuery("DELETE FROM Contact WHERE name=:contactname");
			query.setString("contactname",name);
			
		query.executeUpdate();
			res = true;
		} catch (Exception ex) {

			tx.rollback();

		} finally {
			session.close();
		}

		return res;

	}
}