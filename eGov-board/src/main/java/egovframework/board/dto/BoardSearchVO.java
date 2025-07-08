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

    /** 현재 페이지 번호 */
    private int pageIndex = 1;

    /** 한 페이지 게시글 수 */
    private int pageUnit = 10;

    /** 페이지 하단에 보일 페이징 숫자 수 */
    private int pageSize = 10;

    /** LIMIT OFFSET 시작 인덱스 */
    private int firstIndex = 0;

    /** 마지막 인덱스 (사용 안 할 수도 있음) */
    private int lastIndex = 0;

    /** LIMIT 개수 */
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
