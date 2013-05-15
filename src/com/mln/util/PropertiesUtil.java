package com.mln.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author jiangzhiqiang
 * 属性工具类
 * 2012-4-30
 */
public class PropertiesUtil {
	
	private static Properties props;
	private static final String[] filePath = {"/database.properties","/config.properties"};
	
	static{
		props = new Properties();
		for(String path : filePath){
			InputStream in = PropertiesUtil.class.getResourceAsStream(path); 
			try {
				props.load(in);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static Properties getProps(){
		if(props==null){
			for(String path : filePath){
				readProperties(path);
			}
		}
		return props;
	}

	// 读取属性文件
	public static void readProperties(String filePath) {
		props = new Properties();
		try {
			InputStream in = PropertiesUtil.class.getResourceAsStream(filePath); 
			
			props.load(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * @param key
	 * @return value
	 */
	public static String getValue(String key){
		return props.getProperty(key);
	}

	public static void main(String[] args) {
		/*PropertiesUtil util = new PropertiesUtil();
		String path = util.getClass().getClassLoader().getResource("").getPath() + "database.properties";
		System.out.println(path);
		readProperties(path);*/
		
	}

}
