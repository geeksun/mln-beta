package com.mln.db;

import java.sql.Connection;
import java.util.Properties;

import javax.sql.DataSource;

import com.mln.util.PropertiesUtil;
import com.jolbox.bonecp.BoneCPDataSource;

/**
 * @author user
 * DB连接池管理
 * 2012-5-1
 */
public class ConnectionManager {
	
	private static BoneCPDataSource dataSource; 
	private static Properties props;
	
	static{
		try {
			props = PropertiesUtil.getProps();
			Class.forName(props.getProperty("driverName"));
			dataSource = new BoneCPDataSource();
			dataSource.setJdbcUrl(props.getProperty("jdbcUrl"));
			dataSource.setUsername(props.getProperty("userName"));
			dataSource.setPassword(props.getProperty("password"));
			dataSource.setAcquireIncrement(Integer.parseInt(props.getProperty("acquireIncrement"))); 	//连接池连接耗尽时,请求连接增长的步长
			dataSource.setMaxConnectionsPerPartition(
					Integer.parseInt(props.getProperty("maxConnectionsPerPartition"))); 				//每個partition的最大連線數
			dataSource.setMinConnectionsPerPartition(
					Integer.parseInt(props.getProperty("minConnectionsPerPartition"))); 				//每個partition的最小連線數    
			dataSource.setPartitionCount(
					Integer.parseInt(props.getProperty("partitionCount")));								// connection pool的partition數量
			
		} catch (Exception e) {
		   throw new RuntimeException(e);
		}
	}
	   
    /**
     * @return 连接池连接
     */
    public static Connection getConnection(){
        try {
            return dataSource.getConnection();
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }       
    }
    
    /**
     * Description: 返回数据源
     * @return
     */
    public static DataSource getDataSource(){
    	return dataSource;
    }
	    
}
