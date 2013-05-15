package com.mln.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.About;
import com.mln.db.DBHandler;

/**
 * Description 公司简介
 * 2013-4-24
 * @author usr1999
 */
@Controller
@RequestMapping(value="about")
public class AboutUs {
	
	@RequestMapping(value="")
	public String exec(){
		return "about-us";
	}
	
	@RequestMapping(value="{id}")
	public String structure(@PathVariable Integer id, Model model, HttpServletRequest request){
		String _sql = "select * from about where id=?";
		About _info = (About) DBHandler.queryBean(_sql, About.class, id);
		
		model.addAttribute("_info", _info);
		
		return "about/_info";
	}
	
	
	
}
