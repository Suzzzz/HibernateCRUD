<%-- 
    Document   : taskindex
    Created on : Oct 11, 2017, 10:58:24 PM
    Author     : Suharsha
--%>

<%@page import="Models.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Models.Task" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="Utils.HrmHibernateUtil" %>
<%@ page import="org.hibernate.Query" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HR Management</title>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="js/bootstrap.min.js">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Arimo">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Arimo", sans-serif}
</style>
    </head>
    <body background-color: lightblue;>
       

<!-- Sidebar/menu -->
<div class="nav-side-menu">
   <div class="w3-container w10-row" style="margin-top: inherit">
    <div class="w3-col s4">
     <br>
      <img src="IMGS/pic1.PNG" width="62" class="w3-circle w3-margin-right" style="width:50px; height:65px;">
    </div>
    <div class="w3-col s8 w3-bar">
     <br><br>
      <span>Welcome,<strong>Suharsha</strong></span><br>
      
    </div>
    </div>
    <br><br>
    <div class="brand"></div>
    
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="index.html">
                  <i class="fa fa-dashboard fa-lg"></i> Dashboard
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  <a href="index.jsp"><i class="fa fa-gift fa-lg"></i> Manage Roles <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">CSS3 Animation</a></li>
                    <li><a href="#">General</a></li>
                    <li><a href="#">Buttons</a></li>
                    <li><a href="#">Tabs & Accordions</a></li>
                    <li><a href="#">Typography</a></li>
                    <li><a href="#">FontAwesome</a></li>
                    <li><a href="#">Slider</a></li>
                    <li><a href="#">Panels</a></li>
                    <li><a href="#">Widgets</a></li>
                    <li><a href="#">Bootstrap Model</a></li>
                </ul>


                <li data-toggle="collapse" data-target="#service" class="collapsed">
                  <a href="taskindex.jsp"><i class="fa fa-globe fa-lg"></i> Manage Tasks <span class="arrow"></span></a>
                </li>  
                <ul class="sub-menu collapse" id="service">
                  <li>New Service 1</li>
                  <li>New Service 2</li>
                  <li>New Service 3</li>
                </ul>


                <li data-toggle="collapse" data-target="#new" class="collapsed">
                  <a href="empindex.jsp"><i class="fa fa-car fa-lg"></i> Manage Employees <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new">
                  <li>New New 1</li>
                  <li>New New 2</li>
                  <li>New New 3</li>
                </ul>


                 <li>
                  <a href="Assign_Roles.jsp">
                  <i class="fa fa-user fa-lg"></i> Assign Role to an Employee
                  </a>
                  </li>

                 <li>
                  <a href="Assign_Tasks.jsp">
                  <i class="fa fa-users fa-lg"></i> Assign Task to an Employee
                  </a>
                </li>
            </ul>
     </div>
</div>
<!--
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="IMGS/pic1.PNG" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Welcome, <strong>Suharsha</strong></span><br>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Dashboard</a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Manage Roles</a>
    <a href="taskindex.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-eye fa-fw"></i>  Manage Tasks</a>
    <a href="empindex.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Manage Employees</a>
    <a href="Asign_Roles.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bullseye fa-fw"></i>  Assign Role to Employees</a>
    <a href="Assign_Tasks.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-diamond fa-fw"></i>  Assign Tasks to Employees</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>  News</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bank fa-fw"></i>  General</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-history fa-fw"></i>  History</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cog fa-fw"></i>  Settings</a><br><br>
  </div>
</nav>
-->


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
       <div class="w3-main" style="margin-left:300px;margin-top:43px;">
        <h1 align="center">Task Management</h1>
        
        <table width="450" align="center"><tr><th width="321" align="center">
         <div style="background-color: #ffffff; width:85%;"> 
           <br />
           <h2 align="center">Task Search Form</h2>
        <form name="searchForm" action="searchTaskController">
            <center>Enter Task ID:<input type="text" name="searchValue" value="" >
            </br></br>
            <input type="submit" value="Search Tasks" name="searchButton" /></center>
        </form>
        <center>
        <% 

            Task acc= (Task)request.getAttribute("searchResult"); 
 
        if (acc !=null) 
                {
               %>
               
               <br>
<br>

               <table border="1">
 
                   <tbody>
                       <tr>
                           <td>Task ID</td>
                           <td><% out.println(acc.getTaskid()); %></td>
                       </tr>
                       <tr>
                           <td>Description</td>
                           <td><% out.println(acc.getDescription()); %></td>
                       </tr>
                       <tr>
                           <td>Employee</td>
<!--                           <td><% out.println(acc.getEmployee()); %></td>-->
                       <td><% 
                               
                               
                               Session ssessionaaa=null;
                        Transaction txxxaaa = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Employee> liaaa = null;


                          try {
                              
                              
                              
                                  ssessionaaa=HrmHibernateUtil.getSessionFactory().openSession();
                                  txxxaaa = ssessionaaa.getTransaction();
                                  txxxaaa.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  Integer empId = acc.getEmployee();
                                  Query queryaaa = ssessionaaa.createQuery("from Employee where employeeid="+empId);
                                  
                                   liaaa = (ArrayList<Models.Employee>) queryaaa.list();
                                  
                                  
                                  //ie = li.iterator();
                                  txxxaaa.commit();

                          } catch (Exception e) {
                                  if (txxxaaa != null) {
                                          txxxaaa.rollback();
                                  }
                                  e.printStackTrace();
                          } finally {
                                  ssessionaaa.close();
                          }
                          
                          Integer myiaaa = 0;
                          
                          while(myiaaa<liaaa.size())
                          {
                        
                              
                          Employee rrraaa = liaaa.get(myiaaa);
                              
                         
                          
                         
                         
                         
                        String rTITaaa = rrraaa.getName();
                        
myiaaa++;
                        %>
                        
                        <%= rTITaaa%>
                        
                        
                        <%
                        }
                        
                        
                               
                               
                               
                               
                               
                               %></td>
                       </tr>
                       
                   </tbody>
               </table>
 
               <%
                       }
 else
{
          %>
          No Data
          <% }%>
          </center>
           </table>
        </div></tr>
        
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
       <div class="w3-main" style="margin-left:300px;margin-top:43px;">
       <table width="450" align="center"><tr><th width="321" align="center">
        <div style="background-color: #ffffff; width:85%;"> 
           
           <h2 align="center">Task Creation Form</h2>
            
        <form name="addForm" action="AddTaskController"><br />
            <table align="center">
            <tr><td>Task ID:</td><td><input type="text" name="TaskID" value="" /></td></tr>
            <tr><td>Task Title:<td><input type="text" name="TaskTitle" value="" /></td></tr>
            <tr><td>Employees :</td><td>
                    
                    <select name="EmpID">
                        <option value="">No Employee</option>
                        <%
                        Session empsssession=null;
                        Transaction emptxxxx = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Employee> emplii = null;


                          try {
                              
                              
                              
                                  empsssession=HrmHibernateUtil.getSessionFactory().openSession();
                                  emptxxxx = empsssession.getTransaction();
                                  emptxxxx.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query queryy = empsssession.createQuery("from Employee");
                                  
                                   emplii = (ArrayList<Models.Employee>) queryy.list();
                                  
                                  
                                  //ie = li.iterator();
                                  emptxxxx.commit();

                          } catch (Exception e) {
                                  if (emptxxxx != null) {
                                          emptxxxx.rollback();
                                  }
                                 
                                  e.printStackTrace();
                          } finally {
                                  empsssession.close();
                          }
                          
                          Integer empmyii = 0;
                          
                          while(empmyii<emplii.size())
                          {
                        
                              
                          Employee emprrrr = emplii.get(empmyii);
                              
                         Integer emprrID=emprrrr.getEmployeeid();

                        String emprrTIT = emprrrr.getName();
                        
                        Integer emprrRoleID=emprrrr.getRole();
empmyii++;
                        %>
                        
                        
                        <option value="<%= emprrID%>"><%= emprrID+" - "+emprrTIT+" - "+emprrRoleID%></option>
                        
                        <%
                        }
                        
                        
                        %>
                    </select>
                    
                    </td></tr>
             <tr><td></td><td><input type="submit" value="Add Task" /> </td></tr>
            </table>
          </form>
            <h2>
            <% 
            String rMessage=request.getParameter("message");
            if (rMessage==null)
            rMessage="";
            out.println(rMessage); 
 
            %>
          </h2></div>
          </tr>
          </table>
          </div></div>
        
        
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
       <div class="w3-main" style="margin-left:300px;margin-top:43px; align-content: center;">
       <table width="450" align="center"><tr><th width="321" align="center">
        <div style="background-color: #ffffff; width:85%;"> 
        
           <br />
           <h2 align="center">Tasks Updating Form</h2>
        <form name="updateForm" action="UpdateTaskController"><br />
            <table width="450" align="center">
                
                
            <tr><td>Task :</td><td>
                    
                    <select name="TaskID">
                        <%
                        Session ssession=null;
                        Transaction txxx = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Task> li = null;


                          try {
                              
                              
                              
                                  ssession=HrmHibernateUtil.getSessionFactory().openSession();
                                  txxx = ssession.getTransaction();
                                  txxx.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query query = ssession.createQuery("from Task");
                                  
                                   li = (ArrayList<Models.Task>) query.list();
                                  
                                  
                                  //ie = li.iterator();
                                  txxx.commit();

                          } catch (Exception e) {
                                  if (txxx != null) {
                                          txxx.rollback();
                                  }
                                  e.printStackTrace();
                          } finally {
                                  ssession.close();
                          }
                          
                          Integer myi = 0;
                          
                          while(myi<li.size())
                          {
                        
                              
                          Task rrr = li.get(myi);
                              
                         Integer TID=rrr.getTaskid();
                          
                         
                         
                         
                        String TTIT = rrr.getDescription();
                        
myi++;
                        %>
                        
                        
                        <option value="<%= TID%>"><%= TID+" - "+TTIT%></option>
                        
                        <%
                        }
                        
                        
                        %>
                    </select>
                    
                    </td></tr>
            <tr><td>Update Value:<td><input type="text" name="TaskTitle" value="" /></td></tr>
            
            
            <tr><td>Employees :</td><td>
                    
                    <select name="EmpID">
                        <option value="">No Employee</option>
                        <%
                        Session empsssessiontask=null;
                        Transaction emptxxxxtask = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Employee> empliitask = null;


                          try {
                              
                              
                              
                                  empsssessiontask=HrmHibernateUtil.getSessionFactory().openSession();
                                  emptxxxxtask = empsssessiontask.getTransaction();
                                  emptxxxxtask.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query queryytask = empsssessiontask.createQuery("from Employee");
                                  
                                   empliitask = (ArrayList<Models.Employee>) queryytask.list();
                                  
                                  
                                  //ie = li.iterator();
                                  emptxxxxtask.commit();

                          } catch (Exception e) {
                                  if (emptxxxxtask != null) {
                                          emptxxxxtask.rollback();
                                  }
                                 
                                  e.printStackTrace();
                          } finally {
                                  empsssessiontask.close();
                          }
                          
                          Integer empmyiitask = 0;
                          
                          while(empmyiitask<empliitask.size())
                          {
                        
                              
                          Employee emprrrrtask = empliitask.get(empmyiitask);
                              
                        Integer emprrID=emprrrrtask.getEmployeeid();

                        String emprrTIT = emprrrrtask.getName();
                        
                        Integer emprrRoleID=emprrrrtask.getRole();
                        empmyiitask++;
                        %>
                        
                        
                        <option value="<%= emprrID%>"><%= emprrID+" - "+emprrTIT+" - "+emprrRoleID%></option>
                        
                        <%
                        }
                        
                        
                        %>
                    </select>
                    
                    </td></tr>
            
            
             <tr><td></td><td><input type="submit" value="Update Task" /> </td></tr>
            </table>
          </form>
            <h2>
            <% 
            String rMessage2=request.getParameter("message2");
            if (rMessage2==null)
            rMessage2="";
                out.println(rMessage2); 
 
            %>
          </h2>
           <br /><br /><br />
          </div></tr></table>
        </div>
        <br>
<br>

        <div class="w3-main" style="margin-left:300px;margin-top:43px;">
       <table align="center"><tr><th width="321" align="center">
        <div style="background-color: #ffffff;"> 
        
           <br />
           <h2 align="center">View All Tasks</h2>
        <form name="myfrm4" action=""><br />
            <table width="450" align="center" border="1">
                
                
				<tr><td>Task ID</td><td>Description</td>
				<td>Employee ID</td></tr>
                   
                 
                        <%
                        Session ssessionem=null;
                        Transaction txxxem = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Task> liem = null;


                          try {
                              
                              
                              
                                  ssessionem=HrmHibernateUtil.getSessionFactory().openSession();
                                  txxxem = ssessionem.getTransaction();
                                  txxxem.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query queryem = ssessionem.createQuery("from Task");
                                  
                                   liem = (ArrayList<Models.Task>) queryem.list();
                                  
                                  
                                  //ie = li.iterator();
                                  txxxem.commit();

                          } catch (Exception e) {
                                  if (txxxem != null) {
                                          txxxem.rollback();
                                  }
                                  e.printStackTrace();
                          } finally {
                                  ssessionem.close();
                          }
                          
                          Integer myiem = 0;
                          
                          while(myiem<liem.size())
                          {
                        
                              
                          Task rrrem = liem.get(myiem);
                              
                         Integer TIDem=rrrem.getTaskid();
                          
                         
                         
                         
                        String TTITem = rrrem.getDescription();
                        Integer emplem=rrrem.getEmployee();
myiem++;
                        %>
                        <tr><td><%= TIDem%></td><td><%= TTITem%></td><td>
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	<%= emplem%>
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        	
                        </td></tr>
                        
                                                
                        <%
                        }
                        
                        
                        %>
                    
            
            
            
            
                    
                   
                        
                   
            
            
             
            </table>
            <br>
<br>

          </form>
            </table>
        </div>
        <br /><br /><br />
						</div>
    </body>
</html>
