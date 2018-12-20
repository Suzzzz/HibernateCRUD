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

<!--
<link rel="stylesheet" type="text/css" href="css/AdminLTE.min.css">
<link rel="stylesheet" type="text/css" href="css/skin-blue-light.min.css">
<link rel="stylesheet" type="text/css" href="css/skin-blue-light.css">
<link rel="stylesheet" type="text/css" href="css/AdminLTE.css">
-->


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Arimo">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Arimo", sans-serif}
</style>
    </head>
    <body background-color: lightblue;>
   
      
<!--
       <div class="w3-bar w3-top w3-blue-grey w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right">Logo</span>
</div>
-->

  
   



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
<nav class="w3-sidebar w3-collapse w3-animate-left" style="z-index:3;width:270px; background-color:"#222d32";" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="IMGS/pic1.PNG" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Welcome, <strong>Suharsha</strong></span><br>
      
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
    <a href="empindex.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Manage Employees</a>
    <a href="Asign_Roles.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-bullseye fa-fw"></i>  Assign Role to Employees</a>
    <a href="Assign_Tasks.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-diamond fa-fw"></i>  Assign Tasks to Employees</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>  News</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bank fa-fw"></i>  General</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-history fa-fw"></i>  History</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cog fa-fw"></i>  Settings</a><br><br>
  </div>
</nav>
-->

<script>
			  
			   
			   function myfunc()
			   {
				   var empVal = document.getElementById('EmpIDUPDT').value;
				   var rolVal = document.getElementById('EMPRoleIDUPDT').value;
				   if (empVal!='x')
					   {
						   document.updateForm.action = "searchAssignRoleController";
						   document.updateForm.submit();
					   }
				   else
					   {
						   document.getElementById('EMPRoleIDUPDT').value = 'x';
						   document.getElementById('subBut').disabled = true;
					   }
			   }
			   
			   function myfunc2()
			   {
				   var empVal = document.getElementById('EmpIDUPDT').value;
				   var rolVal = document.getElementById('EMPRoleIDUPDT').value;
				   if (empVal!='x' && rolVal!='x')
				   {
					    document.getElementById('subBut').disabled = false;
				   }
				   else
					   {
						    document.getElementById('subBut').disabled = true;
					   }
				   
			   }
			  </script>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
       <div class="w3-main" style="margin-left:300px;margin-top:43px;">
        <h1><br />
        </h1>
        <table width="450" align="center"><tr><th width="321" align="center">
          <div style="background-color: #ffffff; min-height: 300px;"> 
         
           <br />
           <h2 align="center">Roles Assigning Form</h2>
           <%
           Employee acc= (Employee)request.getAttribute("searchResult");
           %>
           <form method="post" name="updateForm" action="AssignRoleController"><br />
            <table align="center">
            
                <tr><td>Employees :</td><td>
                    
                    <select name="EmpIDUPDT" id="EmpIDUPDT" onChange="myfunc()">
                       <option value="x">Select an Employee</option>
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
                    
                    <%
                    if (acc !=null) 
                	{
                  	%>
                  
                  <script>
						document.getElementById('EmpIDUPDT').value=<%= acc.getEmployeeid() %>;
				  </script>
                
                  
                  <%
                   }
                    %>
                    </td></tr>
                    <tr><th>&nbsp;</th></tr>
                
                
                
                <tr><td>Change Role :</td><td>
                    
                    <select name="EMPRoleIDUPDT" id="EMPRoleIDUPDT" onChange="myfunc2()">
                       <option value="x">Select a Role</option>
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
                    <%
                    if (acc !=null) 
                	{
                  	%>
                  
                  <script>
						document.getElementById('EMPRoleIDUPDT').value=<%= acc.getRole() %>;
				  </script>
                
                  
                  <%
                   }
                    %>
                    </td></tr>
                
            <tr><th>&nbsp;</th></tr>
            
             <tr><td></td><td><input id="subBut" type="submit" value="Assign Role" <%
                    if (acc ==null) 
                	{
                  	%>
                  
                  disabled
               
                  <%
                   }
                    %> /> </td></tr>
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
        </th></tr></table>
        <br /><br /><br />
        
        
						</div>
           
           
           
           
    </body>
</html>
