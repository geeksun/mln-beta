package com.mln.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Description Contact Information
 * 2013-5-10
 * @author usr1999
 */
@Controller
@RequestMapping(value="contact-us")
public class ContactUsCenter {
	
	@RequestMapping(value="")
	public String exec(){
		return "contact-us";
	}

}
