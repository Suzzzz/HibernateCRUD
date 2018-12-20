/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HrmServices;
import org.hibernate.Transaction;
import org.hibernate.Session;
import Models.Task;
import Models.AssignTask;
import Utils.HrmHibernateUtil;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.User;
import org.hibernate.Query;
/**
 *
 * @author Suharsha
 */
public class TaskServices {
    
    public String addTasks(Task tcc)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.save(tcc);
          tr.commit();
                message="New Task Added Successfully!";  
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
    
    
    public String updateTasks(Task tsk)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.update(tsk);
          tr.commit();
                message="Selected Task Updated Successfully!";  
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
    
     public String assignTasks(AssignTask tsk)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.update(tsk);
          tr.commit();
                message="Task Assigned Successfully!";  
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
    
    public Task searchTask(String task_id)
    {
          String message=null;
        Session session=null;
       Transaction tx = null;
	 Task account = null;
         
         
         
	 try {
                 session=HrmHibernateUtil.getSessionFactory().openSession();
		 tx = session.getTransaction();
		 tx.begin();
                 //Query query = session.createQuery("from role");
                 
		 Query query = session.createQuery("from Task where taskid="+task_id);
                 
                 //Query query = session.createQuery("select t.description, t.employee, t.taskid from Task as t where t.taskid="+task_id);
		 account = (Task)query.uniqueResult();
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
    
     public Task searchassignTask(String emp_id)
    {
          String message=null;
        Session session=null;
       Transaction tx = null;
	 Task account = null;
         
         
         
	 try {
                 session=HrmHibernateUtil.getSessionFactory().openSession();
		 tx = session.getTransaction();
		 tx.begin();
                 //Query query = session.createQuery("from role");
                 
		 Query query = session.createQuery("from Task where description="+emp_id);
		 account = (Task)query.uniqueResult();
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
