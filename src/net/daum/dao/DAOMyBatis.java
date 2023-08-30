package net.daum.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import net.daum.vo.GuestVO;

public class DAOMyBatis {
	protected String url = "jdbc:oracle:thin:@localhost:1521:xe";
	protected String user = "night";
	protected String pwd = "123456";
	SqlSessionFactory sqlSessionFactory;
	
	public void init() {
		try {
			String resource = "config/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (Exception e) {
			System.out.println("MyBatis 설정 파일 가져오는 중 문제발생!");
			e.printStackTrace();
		}
	}
	
	public List<GuestVO> getAllList() {
		SqlSession session = sqlSessionFactory.openSession();
		GuestMapper mapper = session.getMapper(GuestMapper.class);
		List<GuestVO> list = mapper.getAllList();
		
		return list;
	}
}
