package egovframework.board.service;

import java.util.List;
import egovframework.board.dto.BoardDTO;
import egovframework.board.dto.BoardSearchVO;
import egovframework.example.sample.service.SampleDefaultVO;

/**
 * @ClassName   : BoardService.java
 * @Description : 게시판 서비스 인터페이스
 * @author      
 * @since       
 * @version     1.0
 */
public interface BoardService {
	
	/** 검색/페이징 없이 전체 조회 */
	List<BoardDTO> getAllBoardList();

    /** 게시글 목록 조회 */
    List<BoardDTO> selectBoardList(BoardSearchVO searchVO) throws Exception;

    /** 게시글 총 개수 조회 */
    int selectBoardListTotCnt(BoardSearchVO searchVO) throws Exception;

    /** 게시글 상세 조회 */
    BoardDTO selectBoardByIdx(Long idx) throws Exception;

    /** 게시글 등록 */
    void insertBoard(BoardDTO dto) throws Exception;

    /** 게시글 수정 */
    void updateBoard(BoardDTO dto) throws Exception;

    /** 게시글 삭제 */
    void deleteBoard(Long idx) throws Exception;

    /** 게시글 조회수 증가 */
    void increaseViewCount(Long idx) throws Exception;
    
    
}
