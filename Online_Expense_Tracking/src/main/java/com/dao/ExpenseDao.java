package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entity.Expense;
import com.entity.User;


public class ExpenseDao {
	static Session session = null;
    static Transaction transaction = null;
    
public static boolean saveExpense(Expense ex) {
        
        boolean success = false;
        try {
            Configuration cfg = new Configuration();
            cfg.configure("com/db/hibernate.cfg.xml");
            session = cfg.buildSessionFactory().openSession();

            transaction = session.beginTransaction();
            session.save(ex);
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
	public static List<Expense>getallexpensebyuser(User user)
	{
		List<Expense> list=new ArrayList<Expense>();
		try {
			 Configuration cfg = new Configuration();
	            cfg.configure("com/db/hibernate.cfg.xml");
	            session = cfg.buildSessionFactory().openSession();
	            
	            Query q=session.createQuery("from Expense where user=:us");
	            
	            q.setParameter("us",user);
	            list=q.list();
		 }
	        catch(Exception e)
		{
	        	e.printStackTrace();
		}
		return list;
	}

}