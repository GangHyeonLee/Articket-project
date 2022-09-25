package com.articket.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.articket.DAO.TicketingDAO;
import com.articket.service.TicketingService;

@Service
public class TicketingServiceImpl implements TicketingService {
	@Autowired
	TicketingDAO tdao;
	
	
	public int payment(Map<String, Object> param){
		return tdao.payment(param);
	}
	
	public Map<String, Object> ticketList(int id){
		return tdao.ticketList(id);
	}

}
