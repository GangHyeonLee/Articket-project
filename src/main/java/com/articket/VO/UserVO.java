package com.articket.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
	
	private int id;
	private String login_id;
	private String password;
	private String nickname;
	private String name;
	private String email;
	private String phone_number;
}
