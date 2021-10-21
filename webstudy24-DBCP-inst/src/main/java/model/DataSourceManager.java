package model;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

/*
 *  WAS ( Apache Tomcat ) 에서 제공하는 DBCP 객체를 생성해 공유하는 클래스 
 *  시스템 상에서 단 하나 존재하면 되므로 Singleton Design Pattern을 적용한다 
 *  
 *  DBCP : Database Connection Pool
 *  		 시스템 성능 향상이 목적 
 *  		컨넥션을 생성하고 소멸하는 방식이 아니라 
 *  		미리 컨넥션들을 생성해놓고 필요시 빌려주고 반납받는 형식으로 컨넥션을 운영한다 
 *  
 *  javax.sql.Datasource Interface : 
 *  WAS 및 오픈소스 진영에서 제공하는 다양한 DBCP 구현체들이 implements 하는 인터페이스 
 *  실제 어플리케이션 측 ( 사용하는 측 ) 에서는 개별 DBCP 구현체들을 보고 사용하는 것이 아니라 
 *  DataSource Interface 의 abstract method를 이용해 개발하게 된다 
 *  이후 dbcp 구현체가 변경되어도 이를 사용하는 어플리케이션 측에서는 영향이 최소화 된다 ( 결합도가 느슨해진다 ) 
 */
public class DataSourceManager {
	private static DataSourceManager instance=new DataSourceManager();
	private DataSource dataSource;
	private DataSourceManager() {
		BasicDataSource dbcp=new BasicDataSource();
		dbcp.setDriverClassName("oracle.jdbc.OracleDriver");
		dbcp.setUrl("jdbc:oracle:thin:@127.0.0.1:1521:xe");
		dbcp.setUsername("scott");
		dbcp.setPassword("tiger");
		//서비스 환경에 알맞게 설정할 수 있다 
		dbcp.setInitialSize(5);//dbcp 생성시점에 Connection Pool에 connection 객체를 5개 생성해 놓는다 
		dbcp.setMaxTotal(25);
		this.dataSource=dbcp;
	}
	public static DataSourceManager getInstance() {
		return instance;
	}
	public DataSource getDataSource() {
		return dataSource;
	}
}







