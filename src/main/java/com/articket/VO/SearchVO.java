package com.articket.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SearchVO extends PaginationVO {

	private String searchType;
	private String keyword;	

}
