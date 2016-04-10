package com.youconnect.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.Member;

public class AccountDescDAO {
	
	private SqlSessionFactory sqlSessionFactory; 
	
	public AccountDescDAO(){
		sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	public AccountDesc selectByIds(AccountDesc acctDesc){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			acctDesc = (AccountDesc) session.selectOne("AccountDesc.getByIds",acctDesc);
			return acctDesc;
		} finally {
			session.close();
		}
	}

}
