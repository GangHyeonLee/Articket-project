package com.articket.VO;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TicketingVO {
	
	private int id;
	private int user_id;
	private int coupon_id;
	private int seat_info_id;
	private String prfnm;
	private String prfplcnm;
	private Date date_ticketed;
	private int check_used;
	

}
