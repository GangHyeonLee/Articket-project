package com.articket.VO;

import lombok.Data;

@Data
public class CriteriaVO {

    private int page;
    private int perPageNum;

    public CriteriaVO() {
        page = 1;
        perPageNum = 10;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        if(page <= 0)
            page = 1;

        this.page = page;
    }

    public int getPerPageNum() {
        return perPageNum;
    }
    
    public int getPageStart() {
        return (this.page - 1) * this.perPageNum;
    }

    public void setPerPageNum(int perPageNum) {
        if(perPageNum <= 0 || perPageNum > 100) {
            perPageNum = 10;
        }else {
        	this.perPageNum = perPageNum;
        }
        
    }
    
}
