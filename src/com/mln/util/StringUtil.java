package com.mln.util;

import java.io.UnsupportedEncodingException;

/**
 * Description 字符串工具类
 * 2013-4-27
 * @author usr1999
 */
public class StringUtil {
	
	public static String converse(String str)
		throws UnsupportedEncodingException {
		return new String(str.getBytes("ISO-8859-1"), "UTF-8");
	}
	
	/**
	 * Description: 是否为空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		return str == null || "".equals(str);
	}
	
	/**
	 * Description: 根据对象传入的类名，返回对应表
	 * @param className 对象类名
	 * @return 表名
	 */
	public static String getTableName(String className){
		//String className = obj.getClass().getSimpleName();
		
		StringBuilder sb = new StringBuilder();
		char[] c = className.toCharArray();
		for(int i=0;i<c.length;i++){
			if(i==0){
				sb.append(" " + c[i]);
				continue;
			}
			if(c[i]<97){
				sb.append("_" + c[i]);
			} else {
				sb.append("" + c[i]);
			}

		}
		
		return sb.toString();
	}
	
	/**
	 * Description: 返回对象的简单类名
	 * @param obj
	 */
	public static final String simpleName(Object obj){
		return obj.getClass().getSimpleName();
	}

}
