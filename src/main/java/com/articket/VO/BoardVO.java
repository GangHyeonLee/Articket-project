package com.articket.VO;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {
	private int id;
	private Integer board_id;
	private String login_id;
	private String title;
	private Integer view; 
	private String user_id;
	private String content;
	private Date date_created;
	private Date date_updated;
	private String keyword;
	private Integer ROWNUM;
	private String nickname;
	public static int updatereviewcnt(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
