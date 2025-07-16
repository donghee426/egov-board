package egovframework.board.mapper;

import java.util.List;

import egovframework.board.dto.BoardDTO;
import egovframework.board.dto.BoardSearchVO;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

/**
 * @ClassName   : BoardMapper.java
 * @Description : 게시판 Mapper 인터페이스 (MyBatis 연동용)
 */
@Mapper("boardMapper")
public interface BoardMapper {
	
	/** 전체 게시글 리스트 조회 (페이징/검색 없음) */
	List<BoardDTO> selectAllBoardList();
	
    /** 게시글 목록 조회 (페이징 + 검색 조건 포함) */
    List<BoardDTO> selectBoardList(BoardSearchVO searchVO);

    /** 게시글 총 개수 조회 (검색 조건 포함) */
    int selectBoardListTotCnt(BoardSearchVO searchVO);

    /** 게시글 단건 조회 (상세 보기) */
    BoardDTO selectBoardByIdx(Long idx);

    /** 게시글 등록 */
    void insertBoard(BoardDTO dto);

    /** 게시글 수정 */
    void updateBoard(BoardDTO dto);

    /** 게시글 삭제 (PK 기준) */
    void deleteBoard(Long idx);

    /** 게시글 조회수 증가 */
    void increaseViewCount(Long idx);
    
    /** 현재 가장 큰 IDX 조회 */
    Long selectMaxBoardIdx(); 

}
