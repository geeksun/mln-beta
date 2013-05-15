package com.mln.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

/**
 * Description 
 * 2013-4-11
 * @author 11
 */
public class EncodingFilter extends HttpServlet implements Filter {

	/**
	 * 
	 */
	private static final long serialVersionUID = -585484174019224814L;
	
	private String encoding = "UTF-8";

	public void doFilter(ServletRequest request, ServletResponse response,
		FilterChain filterChain) throws IOException, ServletException {
		request.setCharacterEncoding(encoding);
		filterChain.doFilter(request, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		this.encoding = filterConfig.getInitParameter("encoding");
	}

	public EncodingFilter() {
		super();
	}

	public void destroy() {
		this.encoding = null;
	}

	public void init() throws ServletException {
	  // Put your code here
	}

}
