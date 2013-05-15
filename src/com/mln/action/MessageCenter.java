package com.mln.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.Message;
import com.mln.db.DBHandler;

/**
 * Description Online message
 * 2013-5-9
 * @author usr1999
 */
@Controller
@RequestMapping(value="message")
public class MessageCenter {

	@RequestMapping(value="")
	public String message(){
		return "message";
	}
	
	@RequestMapping(value="feedback")
	public String feedback(@ModelAttribute Message mes, HttpServletRequest request, HttpServletResponse response){
		response.setContentType("text/plain;charset=UTF-8");    
	    PrintWriter out = null;  
	    try {
	        out = response.getWriter();  
	    } catch (IOException e) {  
	        e.printStackTrace();  
	    }  
	          
	    StringBuilder _sql = new StringBuilder();
	    _sql.append("insert into message ");
	    _sql.append("(title,name,email,phone,content)");
	    _sql.append(" values (?,?,?,?,?)");
	    int result = DBHandler.update(_sql.toString(), mes.getTitle(), mes.getName(), mes.getEmail(), mes.getPhone(), mes.getContent());
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
