package com.articket.DAO;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TicketingDAO {
	@Autowired
	SqlSessionTemplate sql;
	
	public int payment(Map<String, Object> param){
		return sql.insert("ticketing.insert", param);
	}
	
	public Map<String, Object> ticketList(int id){
		return sql.selectOne("ticketing,ticketList", id);
	}

}
