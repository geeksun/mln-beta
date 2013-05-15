package com.mln.action.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.Admin;
import com.mln.db.DBHandler;

/**
 * Description Administrator manage 
 * 2013-5-10
 * @author usr1999
 */
@Controller
@RequestMapping(value="admin")
public class Home {
	
	@RequestMapping(value="")
	public String exec(){
		return "admin/login";
	}
	
	@RequestMapping(value="login")
	public String login(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("text/plain;charset=UTF-8");    
	    PrintWriter out = null;  
	    try {
	        out = response.getWriter();  
	    } catch (IOException e) {  
	        e.printStackTrace();  
	    }  
		
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String _sql = "select * from admin where account=?";
		Admin admin = (Admin) DBHandler.queryBean(_sql, Admin.class, account);
		if(admin!=null){
			String _pd = admin.getPassword();
			if(_pd.equals(password)){
				out.print(account); 
			}else{
				out.print("0");  
			}
		}else{
			out.print("0");  
		}
		out.flush();
        out.close(); 
		
		return null;
	}
	
	@RequestMapping(value="index")
	public String index(Model model, HttpServletRequest request, HttpServletResponse response){
		String account = request.getParameter("_account");
		model.addAttribute("account", account);
		
		return "admin/index";
	}
	
	@RequestMapping(value="top")
	public String top(){
		
		return "admin/top";
	}
	
	@RequestMapping(value="left")
	public String left(Model model, HttpServletRequest request){
		
		
		return "admin/left";
	}
	
	@RequestMapping(value="menu")
	public String menu(Model model, HttpServletRequest request){
		String account = request.getParameter("account");
		model.addAttribute("account", account);
		
		return "admin/menu";
	}
	
	@RequestMapping(value="main")
	public String main(Model model, HttpServletRequest request){
		String osName = System.getProperty("os.name");
		model.addAttribute("osName", osName);
		
		String user_agent = request.getHeader("user-agent");
		StringTokenizer st = new StringTokenizer(user_agent, ";");
		st.nextToken();
		String browerName = st.nextToken();
		
		model.addAttribute("browerName", browerName);
		model.addAttribute("request", request);
		
		return "admin/main";
	}
	
}
