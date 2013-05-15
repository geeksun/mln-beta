package com.mln.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.Applicant;
import com.mln.bean.Jobs;
import com.mln.bean.PageBean;
import com.mln.db.DBHandler;
import com.mln.util.PropertiesUtil;
import com.mln.util.StringUtil;

/**
 * Description Recruitment
 * @author usr1999
 * 2013-5-5
 */
@Controller
@RequestMapping(value="recruitment")
public class Recruitment {
	
	@RequestMapping(value="")
	public String recruitment(){
		
		
		return "recruitment";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="list.data")
	public String list(Model model, HttpServletRequest request){
		String pageNo = request.getParameter("pageNo");
		
		if(StringUtil.isEmpty(pageNo)||pageNo.equals("0"))						// suppose 
			pageNo = "1";
		
		int pageNum = Integer.parseInt(pageNo);
		
		PageBean page = new PageBean();
		int rowsPage = Integer.parseInt(PropertiesUtil.getValue("rowsPage_jobs"));
		page.setRowsPage(rowsPage);
		
		String count_sql = "select count(1) from jobs";
		String data_sql = "select id id,title title,age_Low ageLow,age_Up ageUp,gender gender,education education,vacancy vacancy,requirement requirement from jobs";
		
		int totalRows = DBHandler.stat(count_sql);
		page.setTotalRows(totalRows);
		
		data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
		
		ArrayList<Jobs> data = (ArrayList<Jobs>) DBHandler.queryBeanList(data_sql, Jobs.class);
		page.setData(data);
		page.countTotalPage();
		page.setCurrentPage(pageNum);
		
		model.addAttribute("_page", page);
		
		return "recruitment/_data";
	}
	
	@RequestMapping(value="jobs/{id}")
	public String jobInfo(@PathVariable Integer id, Model model){
		String _sql = "select title from jobs where id=?";
		String title = (String) DBHandler.queryField(_sql, id);
		model.addAttribute("title", title);
		model.addAttribute("_id", id);
		
		return "recruitment/applicant";
	}
	
	/**
	 * 接受职位申请信息
	 */
	@RequestMapping(value="addApplicant")
	public String addApplicant(@ModelAttribute Applicant app, HttpServletRequest request, HttpServletResponse response){
		response.setContentType("text/plain;charset=UTF-8");    
	    PrintWriter out = null;  
	    try {
	        out = response.getWriter();  
	    } catch (IOException e) {  
	        e.printStackTrace();  
	    }  
	          
	    StringBuilder _sql = new StringBuilder();
	    _sql.append("insert into applicant ");
	    _sql.append("(jobs_id,name,gender,birthday,graduate,education,specialty,hometown,");
	    _sql.append("education_experience,work_experience,phone,email,address)");
	    _sql.append(" values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
	    int result = DBHandler.update(_sql.toString(), app.getJobsId(),app.getName(),app.getGender(),app.getBirthday(),
	    		app.getGraduate(),app.getEducation(),app.getSpecialty(),app.getHometown(),app.getEducationExperience(),
	    		app.getWorkExperience(),app.getPhone(),app.getEmail(),app.getAddress());
	    if(result>0){
	    	out.print("1");  
	    	out.flush();
	        out.close(); 
	    }else{
	    	out.print("0");
	    	out.flush();
	        out.close(); 
	    }
	      
	    return null;  
	}
	
}
