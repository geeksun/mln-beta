package com.mln.db;

import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

/**
 * @author user
 * Description: 数据库常规操作
 * 2012-5-5
 */
public class DBHandler {
	
	/**
	 *  QueryRunner对象
	 */
	private static QueryRunner runner = null;
	
	/**
	 * Description: 返回QueryRunner对象
	 * @return 
	 */
	public static QueryRunner getRunner(){
		if(runner == null) {
			DataSource dataSource = ConnectionManager.getDataSource();
			runner = new QueryRunner(dataSource);
		}
		
		return runner;
	}
	
	/**
	 * Description: 查询单个结果
	 * @param sql
	 * @param object
	 * @param params
	 * @return 
	 */
	@SuppressWarnings("unchecked")
	public static <T> Object queryBean(String sql, Class<?> clazz, Object...params){
		try {
			// 多参查询 Object... 可变参数.. 
			Object bean = getRunner().query(sql, 
					new BeanHandler(clazz), params);
			
			return bean;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	/**
	 * Description: 查询列表语句
	 * @param sql
	 * @param object
	 * @param params
	 * @return 
	 */
	@SuppressWarnings("unchecked")
	public static <T> List<?> queryBeanList(String sql, Class<?> clazz, Object...params){
		try {
			// 多参查询 Object... 可变参数.. 
			List<?> beanList = (List<?>) getRunner().query(sql, 
					new BeanListHandler(clazz), params);
			
			return beanList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	/**
	 * Description: 查询列表语句
	 * @param sql
	 * @param object
	 * @param params
	 * @return 
	 * via http://www.oschina.net/code/snippet_12_6
	 */
	private final static ScalarHandler _g_scaleHandler = new ScalarHandler(){
		@Override
		public Object handle(ResultSet rs) throws SQLException {
			if(rs.next()){
				return rs.getInt(1);
			}
			return 0;
		}
	};
	
	/**
	 * 执行统计查询语句，语句的执行结果必须只返回一个数值
	 * @param sql
	 * @param params
	 * @return
	 */
	public static int stat(String sql, Object...params) {
		Integer num = null;
		try{
			num = (Integer)getRunner().query(sql, _g_scaleHandler, params);
			return (num!=null)?num:-1;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return num;
	}
	
	/**
	 * Description: 执行INSERT/UPDATE/DELETE语句
	 * @return
	 */
	public static int update(String sql, Object... params){
		int flag = 0;
		try {
			flag = getRunner().update(sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}
	
	/**
	 * 查询某一字段
	 */
	public static Object queryField(String sql, Object... params){
		Object obj = null;
		try {
			obj = getRunner().query(sql, new ScalarHandler(), params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return obj;
	}
	
	/**
	 * Description: 查询SQL，返回结果集
	 * 在ResultSet使用时，不能关闭connection和statement
	 * @param sql SQL语句
	 * @param param String类型参数
	 * @return ResultSet
	 */
	/*public static ResultSet Query(String sql, String param){
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try{
			conn = ConnectionManager.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, param);
			
			rs = psmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtils.closeQuietly(psmt);
			DbUtils.closeQuietly(conn);
		}
		return null;
	}*/
	
	

}
