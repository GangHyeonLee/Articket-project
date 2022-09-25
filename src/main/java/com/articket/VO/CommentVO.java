package com.articket.VO;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommentVO {
	private int id;
	private int post_id;
	private int user_id;
	private int depth_id;
	private String content;
	private Date date_created;
	private Date date_updated;
	private String nickname;
	
}
