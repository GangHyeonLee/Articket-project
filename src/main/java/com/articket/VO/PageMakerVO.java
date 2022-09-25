package com.articket.VO;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class PageMakerVO {
	
		private CriteriaVO cri;
	    private int totalCount; //total number of records
	    private int displayPageNum = 10; //페이지 인덱스는 0~10까지 표시한다.
	    private int startPage;
	    private int endPage;
	    private boolean prev;
	    private boolean next;

	    public void setTotalCount(int totalCount) {
	        this.totalCount = totalCount;
	        calcData();
	    }

	    public int getStartPage() {
	        return startPage;
	    }

	    public int getEndPage() {
	        return endPage;
	    }

	    public boolean isPrev() {
	        return prev;
	    }

	    public boolean isNext() {
	        return next;
	    }
	    
	    private void calcData() {

	        //e.g. 페이지 번호가 13이라고 할 때, 페이지 범위는 10 부터 20. 따라서 endPage 는 20이어야 한다.
	        endPage = (int)(Math.ceil(cri.getPage() / (double)displayPageNum)) * displayPageNum;

	        //시작 페이지는 endPage - 10 + 1과 동일하다. 20 - 10 + 1 = 11
	        startPage = (endPage - displayPageNum) + 1;

	        //e.g. 전체 레코드의 수가 164라 가정할 때, 164 / 10 = 16.4, 실제 필요한 페이지는 17 페이지이다.
	        int tempEndPage = (int)Math.ceil(totalCount / (double)cri.getPerPageNum());

	        //따라서 endPage가 실제 필요 페이지보다 큰 경우에는 실제 필요한 페이지로 값을 변경한다.
	        if(endPage > tempEndPage)
	            endPage = tempEndPage;

	        //첫번째 페이지가 1이 아니라면 prev 링크가 필요하다.
	        prev = (startPage != 1);

	        //end 페이지까지의 총 레코드의 수가 전체 레코드의 수보다 작다면 next 링크가 필요하다.
	        next = (endPage * cri.getPerPageNum() < totalCount);
	    }

	    public String makeQuery(int page) {

	        UriComponents uriComponents = UriComponentsBuilder.newInstance()
	                .queryParam("page", page)
	                .queryParam("perPageNum", cri.getPerPageNum()).build();

	        return uriComponents.toUriString();
	    }
	    

}

