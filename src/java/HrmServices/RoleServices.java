/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package HrmServices;
import Models.Role;
import org.hibernate.Transaction;
import org.hibernate.Session;
import Utils.HrmHibernateUtil;
import org.hibernate.Query;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.User;
import java.util.List;

/**
 *
 * @author Suharsha
 */
public class RoleServices {
    public String addRoles(Role acc)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.save(acc);
          tr.commit();
                message="New Role Added Successfully!";  
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
    
    
    public String updateRoles(Role acc)
    {
         String message=null;
        Session s=null;
        try
        {
            s=HrmHibernateUtil.getSessionFactory().openSession();
            Transaction tr=s.getTransaction();
           tr.begin();
          s.update(acc);
          tr.commit();
                message="Selected Role Updated Successfully!";  
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
    //added method for view all
    public static List<Role> getCars() {
        
        List<Role> Roles;
        Session session = HrmHibernateUtil.getSessionFactory().openSession();
        
        
            Roles = session.createQuery("from Role").list();
        
        return Roles;
    }
    
    
    
    public Role searchRole(String role_id)
    {
          String message=null;
        Session session=null;
       Transaction tx = null;
	 Role account = null;
         
         
         
	 try {
                 session=HrmHibernateUtil.getSessionFactory().openSession();
		 tx = session.getTransaction();
		 tx.begin();
                 //Query query = session.createQuery("from role");
                 
		 Query query = session.createQuery("from Role where roleid="+role_id);
		 account = (Role)query.uniqueResult();
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
