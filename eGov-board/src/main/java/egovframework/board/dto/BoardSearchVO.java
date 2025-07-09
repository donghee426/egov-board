/*
 * 게시판 검색 및 페이징 VO
 * SampleDefaultVO.java 기반으로 재구성
 */
package egovframework.board.dto;

import java.io.Serializable;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class BoardSearchVO implements Serializable {

    private static final long serialVersionUID = 1L;

    /** 검색 조건 (0: 제목, 1: 작성자) */
    private String searchCondition = "";

    /** 검색 키워드 */
    private String searchKeyword = "";

    /** 검색 사용 여부 (예: Y/N 필터용) */
    private String searchUseYn = "";
    
    /** 현재 페이지 번호 (기본값 1페이지) */
    private int pageIndex = 1;

    /** 한 페이지에 보여줄 게시글 수 (예: 10개) */
    private int pageUnit = 10;

    /** 페이지 하단에 보여줄 페이지 번호 개수 (예: [1][2][3][4][5]) */
    private int pageSize = 3;

    /** LIMIT 쿼리에서 사용할 시작 인덱스 (예: 0부터 시작) */
    private int firstIndex = 0;

    /** 마지막 인덱스 (보통 사용하지 않음) */
    private int lastIndex = 0;

    /** LIMIT 쿼리에서 사용할 개수 → 보통 pageUnit과 같은 값 */
    private int recordCountPerPage = 10;
    
    // Getter/Setter
    public String getSearchCondition() {
        return searchCondition;
    }

    public void setSearchCondition(String searchCondition) {
        this.searchCondition = searchCondition;
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public String getSearchUseYn() {
        return searchUseYn;
    }

    public void setSearchUseYn(String searchUseYn) {
        this.searchUseYn = searchUseYn;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageUnit() {
        return pageUnit;
    }

    public void setPageUnit(int pageUnit) {
        this.pageUnit = pageUnit;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getFirstIndex() {
        return firstIndex;
    }

    public void setFirstIndex(int firstIndex) {
        this.firstIndex = firstIndex;
    }

    public int getLastIndex() {
        return lastIndex;
    }

    public void setLastIndex(int lastIndex) {
        this.lastIndex = lastIndex;
    }

    public int getRecordCountPerPage() {
        return recordCountPerPage;
    }

    public void setRecordCountPerPage(int recordCountPerPage) {
        this.recordCountPerPage = recordCountPerPage;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
