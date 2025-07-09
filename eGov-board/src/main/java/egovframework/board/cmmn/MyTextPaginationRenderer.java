package egovframework.board.cmmn;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class MyTextPaginationRenderer extends AbstractPaginationRenderer {

    public MyTextPaginationRenderer() {
        // 처음 페이지
        firstPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">&laquo;</a>";
        
        // 이전 페이지
        previousPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">&lsaquo;</a>";
        
        // 현재 페이지
        //currentPageLabel = "<strong>{0}</strong>&#160;";
        currentPageLabel = "<a href=\"#\" class=\"active\" onclick=\"return false;\">{0}</a>";
        
        // 다른 페이지
        otherPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a>";
        
        // 다음 페이지
        nextPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">&rsaquo;</a>";
        
        // 마지막 페이지
        lastPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">&raquo;</a>";
    }

}