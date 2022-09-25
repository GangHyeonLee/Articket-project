package com.articket.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PaginationVO {

	private int listSize = 10; // 초기값으로 목록개수를 10으로 셋팅 한 페이지당 보여질 리스트의 개수

	private int rangeSize = 5; // 초기값으로 페이지범위를 5로 셋팅 한 페이지 범위에 보여질 페이지의 개수

	private int page; // 현재목록의 페이지 번호

	private int range; // 각 페이지 범위 시작 번호

	private int listCnt; // 전체 개시물의 개수

	private int pageCnt; // 전체 페이지 범위의 개수

	private int startPage; // 각 페이지 범위 시작 번호

	private int startList; // 게시판 시작번호

	private int endPage; // 각 페이지 범위 끝 번호

	private boolean prev; // 이전 페이지

	private boolean next; // 다음 페이지

	// 첫번째 인자 page 는 현재 페이지 정보, 두번째 인자 range 는 현재 페이지 범위 정보, 세번째 인자 listCnt는 게시물의 총 개수
	public void pageInfo(int page, int range, int listCnt) {

		this.page = page;

		this.range = range;

		this.listCnt = listCnt;

		// 전체 페이지수
		this.pageCnt = (int) Math.ceil((double) listCnt / listSize);

		// 시작 페이지
		this.startPage = (range - 1) * rangeSize + 1;

		// 끝 페이지
		this.endPage = range * rangeSize;

		// 게시판 시작번호
		this.startList = (page - 1) * listSize;

		// 이전 버튼 상태
		this.prev = range == 1 ? false : true;

		// 다음 버튼 상태
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}
}
