<%-- 
    Document   : index
    Created on : Oct 10, 2017, 8:06:30 PM
    Author     : Suharsha
--%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Models.Employee" %>
<%@ page import="Models.Role" %>
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
    <a href="taskindex.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Manage Tasks</a>
    <a href="empindex.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Manage Employees</a>
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
        <h1 align="center">Employee Management </h1>
        
       
       <div class="w3-main" style="margin-left:300px;margin-top:43px;">
        
        
        <div style="background-color: #ffffff; width:60%;"> 
           <br />
           <center><h2>Employee Search Form</h2></center>
        <form class="form-horizontal" name="searchForm" action="searchEmployeeController">
           <center>
            Enter Role ID:<input type="text" name="searchValue" value="" >
            <br><br>

<input type="submit" value="Search Employees" name="searchButton" />
           </center>
        </form><br>
<br>
        <% 
             
            
            Employee acc= (Employee)request.getAttribute("searchResult"); 
 
        if (acc !=null) 
                {
              //out.println(request.getAttribute("searchResult"));
               %>

        <table border="1" align="center">
 
            <tbody>
                       <tr>
                           <td>Emp ID</td>
                           <td><% out.println(acc.getEmployeeid()); %></td>
                       </tr>
                       <tr>
                           <td>Emp Name</td>
                           <td><% out.println(acc.getName()); %></td>
                       </tr>
                       <tr>
                           <td>Emp Role</td>
                           <td><% 
                               
                               
                               Session ssessionaaa=null;
                        Transaction txxxaaa = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Role> liaaa = null;


                          try {
                              
                              
                              
                                  ssessionaaa=HrmHibernateUtil.getSessionFactory().openSession();
                                  txxxaaa = ssessionaaa.getTransaction();
                                  txxxaaa.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  Integer rlId = acc.getRole();
                                  Query queryaaa = ssessionaaa.createQuery("from Role where roleid="+rlId);
                                  
                                   liaaa = (ArrayList<Models.Role>) queryaaa.list();
                                  
                                  
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
                        
                              
                          Role rrraaa = liaaa.get(myiaaa);
                              
                         
                          
                         
                         
                         
                        String rTITaaa = rrraaa.getTitle();
                        
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
          <center>No Data</center>
          <% }%>
           <br>
<br>
        </div>
        
        </div>
        
        <br /><br /><br />
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
       <div class="w3-main" style="margin-left:300px;margin-top:43px;">
        <div style="background-color: #ffffff; width:60%;"> 
           <br />
           <h2 align="center">Employees Creation Form</h2>
        <form name="addForm" action="AddEmployeeController"><br />
            <table align="center">
            <tr><td>Emp ID:</td><td><input type="text" name="EmpID" value="" /></td></tr>
            <tr><td>Emp Name:<td><input type="text" name="EmpName" value="" /></td></tr>
            
            <tr><td>Role :</td><td>
                    
                    <select name="EMPRoleID">
                        <%
                        Session ssession=null;
                        Transaction txxx = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Role> li = null;


                          try {
                              
                              
                              
                                  ssession=HrmHibernateUtil.getSessionFactory().openSession();
                                  txxx = ssession.getTransaction();
                                  txxx.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query query = ssession.createQuery("from Role");
                                  
                                   li = (ArrayList<Models.Role>) query.list();
                                  
                                  
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
                        
                              
                          Role rrr = li.get(myi);
                              
                         Integer rID=rrr.getRoleid();
                          
                         
                         
                         
                        String rTIT = rrr.getTitle();
                        
myi++;
                        %>
                        
                        
                        <option value="<%= rID%>"><%= rID+" - "+rTIT%></option>
                        
                        <%
                        }
                        
                        
                        %>
                    </select>
                    
                    </td></tr>
            
            
            
            
            
             <tr><td></td><td><input type="submit" value="Add Employee" /> </td></tr>
            </table>
          </form>
            <h2>
            <% 
            String rMessage=request.getParameter("message");
            if (rMessage==null)
            rMessage="";
            out.println(rMessage); 
 
            %>
          </h2>
          
          </div> </div>
        
        <br /><br /><br />
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
       <div class="w3-main" style="margin-left:300px;margin-top:43px;">
        <div style="background-color: #ffffff; width:60%;"> 
           <br />
           <h2 align="center">Employees Updating Form</h2>
        <form name="updateForm" action="UpdateEmployeeController"><br />
            <table>
            
                <tr><td>Employees :</td><td>
                    
                    <select name="EmpIDUPDT">
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
                
                <tr><td>Update Name:<td><input type="text" name="EmpNameUPDT" value="" /></td></tr>
                
                <tr><td>Change Role :</td><td>
                    
                    <select name="EMPRoleIDUPDT">
                        <%
                        Session sssession=null;
                        Transaction txxxx = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Role> lii = null;


                          try {
                              
                              
                              
                                  sssession=HrmHibernateUtil.getSessionFactory().openSession();
                                  txxxx = sssession.getTransaction();
                                  txxxx.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query queryy = sssession.createQuery("from Role");
                                  
                                   lii = (ArrayList<Models.Role>) queryy.list();
                                  
                                  
                                  //ie = li.iterator();
                                  txxxx.commit();

                          } catch (Exception e) {
                                  if (txxxx != null) {
                                          txxxx.rollback();
                                  }
                                  
                                  e.printStackTrace();
                          } finally {
                                  sssession.close();
                          }
                          
                          Integer myii = 0;
                          
                          while(myii<lii.size())
                          {
                        
                              
                          Role rrrr = lii.get(myii);
                              
                         Integer rrID=rrrr.getRoleid();
                          
                         
                         
                         
                        String rrTIT = rrrr.getTitle();
                        
myii++;
                        %>
                        
                        
                        <option value="<%= rrID%>"><%= rrID+" - "+rrTIT%></option>
                        
                        <%
                        }
                        
                        
                        %>
                    </select>
                    
                    </td></tr>
                
            
            
             <tr><td></td><td><input type="submit" value="Update Employee" /> </td></tr>
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
          </div>
        
        <br /><br /><br />
        
        
						</div>
           <br>
<br>
<div class="w3-main" style="margin-left:300px;margin-top:43px;">
        <div style="background-color: #ffffff; width:60%;"> 
           <br />
           <h2 align="center">All Employees</h2>
        <form name="updateForm" action="UpdateEmployeeController"><br />
          <table align="center" border="1">
            
				<tr><td>Employee ID</td><td>Name</td><td>Role ID</td></tr>
                    
                    
            <%
                        Session empsssessionemp=null;
                        Transaction emptxxxxemp = null;
                        
                        //Iterator ie = null;
                        
                        ArrayList<Models.Employee> empliiemp = null;


                          try {
                              
                              
                              
                                  empsssessionemp=HrmHibernateUtil.getSessionFactory().openSession();
                                  emptxxxxemp = empsssessionemp.getTransaction();
                                  emptxxxxemp.begin();
                                  //Query query = session.createQuery("select r.roleid from Role r");
                                  
                                  
                                  //String hql = "from Role";
                                    //Query q = ssession.createQuery(hql);
                                    //li = (ArrayList<Models.Role>)q.list();
                                  
                                  Query queryyemp = empsssessionemp.createQuery("from Employee");
                                  
                                   empliiemp = (ArrayList<Models.Employee>) queryyemp.list();
                                  
                                  
                                  //ie = li.iterator();
                                  emptxxxxemp.commit();

                          } catch (Exception e) {
                                  if (emptxxxxemp != null) {
                                          emptxxxxemp.rollback();
                                  }
                                 
                                  e.printStackTrace();
                          } finally {
                                  empsssessionemp.close();
                          }
                          
                          Integer empmyiiemp = 0;
                          
                          while(empmyiiemp<empliiemp.size())
                          {
                        
                              
                          Employee emprrrremp = empliiemp.get(empmyiiemp);
                              
                         Integer emprrIDemp=emprrrremp.getEmployeeid();

                        String emprrTITemp = emprrrremp.getName();
                        
                        Integer emprrRoleIDemp=emprrrremp.getRole();
						empmyiiemp++;
                        %>
                        
                        <tr><td><%= emprrIDemp%></td><td><%= emprrTITemp%></td><td><%= emprrRoleIDemp%></td></tr>
                        
                        <%
                        }
                        
                        
                        %>
                    
                    
                    
                
                
                
                
            
            
             
          </table>
          </form>
            
           <br /><br />
    </div>
        
        <br /><br /><br />
        
        
						</div>
          
           </div>
           
    </body>
</html>
