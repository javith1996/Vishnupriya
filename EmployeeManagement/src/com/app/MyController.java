package com.app;

import javax.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MyController {
@Autowired
HibernateTemplate hibernateTemplate;

@Autowired 
JdbcTemplate jdbcTemplate;
	
	@RequestMapping("/")
	public String indexPage(){
		return "login";
	}
	

	@RequestMapping("/login")
	public String user_credentials(HttpServletRequest req)
	{
		String user_name=req.getParameter("userid");
		String password=req.getParameter("password");
		int count=jdbcTemplate.queryForInt("select count(*) from user where user_name=? and password=?",new String[]{user_name,password});
		if(count>0){
			return "getdetails";
		}
		else{
			return "error";
		}
	}

	@RequestMapping("/ShowAll")
	public ModelAndView  getAllEmployees(){
		List<Employee>  emps= hibernateTemplate.find("from Employee");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		mav.addObject("list", emps);
		return mav;
	}
	
	@RequestMapping("/AddNew")
	public String addEmployeePage(){
		return "addNewEmp";
	}
	@RequestMapping("/goto")
	public String mainpg()
	{
		return "getdetails";
	}
	@RequestMapping("/loginpg")
	public String loginpage()
	{
		return "login";
	}
	
	@RequestMapping("/addNewEmp")
	public String addEmployee(HttpServletRequest request){
			String emp_name=request.getParameter("empname");
			String department=request.getParameter("dept");
			String designation=request.getParameter("desg");
			String employeesalary=request.getParameter("sal");
			String mobile=request.getParameter("mob");
			int salary=Integer.parseInt(employeesalary);
			 Employee employee = new Employee();
			    employee.setEmp_name(emp_name);
			    employee.setDepartment(department);
			    employee.setDesignation(designation);
			    employee.setSalary(salary);
			    employee.setMobile(mobile);
			    hibernateTemplate.persist(employee);
			    return "message"; 
	}	
	
	@RequestMapping("/DeleteEmployee")
	public String del()
	{
		return "Delete";
	}
	
	 @RequestMapping("/Delete")
	 public String delete(HttpServletRequest req){
		 String eid=req.getParameter("empid");
			int id=Integer.parseInt(eid);
            Employee e=new Employee();
            e.setEmp_id(id);
            hibernateTemplate.delete(e);
            return "message";
	 }
	 


   @RequestMapping("/EditEmployee")
   public String edit()
   {
	   return "Edit";
   }
   @RequestMapping("/Edit")
	   public String editEmployee(HttpServletRequest request){
			String employeeid=request.getParameter("empid");
			String emp_name=request.getParameter("empname");
			String department=request.getParameter("dept");
			String designation=request.getParameter("desg");
			String employeesalary=request.getParameter("sal");
			String mobile=request.getParameter("mob");
			int emp_id=Integer.parseInt(employeeid);
			int salary=Integer.parseInt(employeesalary);
			 Employee employee = new Employee();
			 employee.setEmp_id(emp_id);
			 employee.setEmp_name(emp_name);
			    employee.setDepartment(department);
			    employee.setDesignation(designation);
			    employee.setSalary(salary);
			    employee.setMobile(mobile);
			    hibernateTemplate.update(employee);
			    return "message";
   }
      
}