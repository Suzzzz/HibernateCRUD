package Models;
// Generated Oct 10, 2017 7:08:11 PM by Hibernate Tools 4.3.1



/**
 * Task generated by hbm2java
 */
public class AssignTask  implements java.io.Serializable {


     private int taskid;
     private Integer employee;

    public AssignTask() {
    }

    public AssignTask(int taskid, Integer employee) {
       this.taskid = taskid;
       this.employee = employee;
    }
    
    
   
    public int getTaskid() {
        return this.taskid;
    }
    
    public void setTaskid(int taskid) {
        this.taskid = taskid;
    }
   
    public Integer getEmployee() {
        return this.employee;
    }
    
    public void setEmployee(Integer employee) {
        this.employee = employee;
    }




}


