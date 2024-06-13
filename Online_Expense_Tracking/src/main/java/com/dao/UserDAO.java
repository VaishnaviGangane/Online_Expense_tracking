package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entity.User;


public class UserDAO {
	static Session session = null;
    static Transaction transaction = null;
    public static boolean saveUser(User user) {
        
        boolean success = false;
        try {
            Configuration cfg = new Configuration();
            cfg.configure("com/db/hibernate.cfg.xml");
            session = cfg.buildSessionFactory().openSession();

            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
            success = true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
                success=false;
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return success;
    }
    
    public static User login(String email, String password) {
        try {
            Configuration cfg = new Configuration();
            cfg.configure("com/db/hibernate.cfg.xml");
            session = cfg.buildSessionFactory().openSession();
            
            org.hibernate.Query q = session.createQuery("from User where email=:em and password=:ps");
            
            q.setParameter("em", email);
            q.setParameter("ps", password);
            
            User u = (User) q.uniqueResult();
            return u;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return null;
    }

}
