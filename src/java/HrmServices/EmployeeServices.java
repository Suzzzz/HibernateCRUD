/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HrmServices;
import org.hibernate.Transaction;
import org.hibernate.Session;
import Models.Employee;
import Models.AssignRole;
import Utils.HrmHibernateUtil;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.User;
import org.hibernate.Query;
/**
 *
 * @author Suharsha
 */
public class EmployeeServices {
   
    
    public String addEmployees(Employee emp)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.save(emp);
          tr.commit();
                message="New Employee Added Successfully!";  
           return message; 
        }
        catch (Exception e)
        {
            return (e.getMessage());
        }
        finally 
                {
                    s.close();
                }
 
 
    }
    
    public String updateEmployees(Employee emp)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.update(emp);
          tr.commit();
                message="Selected Employee Updated Successfully!";  
           return message; 
        }
        catch (Exception e)
        {
            return (e.getMessage());
        }
        finally 
                {
                    s.close();
                }
    }
    
     public String assignRole(AssignRole emp)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.update(emp);
          tr.commit();
                message="Role Assigned Successfully!";  
           return message; 
        }
        catch (Exception e)
        {
            return (e.getMessage());
        }
        finally 
                {
                    s.close();
                }
    }
    
    
    public Employee searchEmployee(String emp_id)
    {
          String message=null;
        Session session=null;
       Transaction tx = null;
	 Employee account = null;
         
         
         
	 try {
                 session=HrmHibernateUtil.getSessionFactory().openSession();
		 tx = session.getTransaction();
		 tx.begin();
                 //Query query = session.createQuery("from role");
                 
		 Query query = session.createQuery("from Employee where  employeeid="+emp_id);
		 account = (Employee)query.uniqueResult();
		 tx.commit();
                
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
	 return account;
    }
    
    public Employee searchAssignEmployee(String emp_id)
    {
          String message=null;
        Session session=null;
       Transaction tx = null;
	 Employee account = null;
         
         
         
	 try {
                 session=HrmHibernateUtil.getSessionFactory().openSession();
		 tx = session.getTransaction();
		 tx.begin();
                 //Query query = session.createQuery("from role");
                 
		 Query query = session.createQuery("from Employee where  employeeid="+emp_id);
		 account = (Employee)query.uniqueResult();
		 tx.commit();
                
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
	 return account;
    }
}
