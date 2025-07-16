package egovframework.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import egovframework.board.dto.BoardDTO;
import egovframework.board.dto.BoardSearchVO;
import egovframework.board.mapper.BoardMapper;
import egovframework.board.service.BoardService;

/**
 * @ClassName   : BoardServiceImpl.java
 * @Description : 게시판 서비스 구현 클래스
 * @author      
 * @since       
 * @version     1.0
 */
@Service("boardService")
public class BoardServiceImpl implements BoardService {

    //@Autowired
	@Resource(name="boardMapper")
    private BoardMapper boardMapper;

    /** 게시글 목록 조회 (페이징/검색 없이) */
	@Override
	public List<BoardDTO> getAllBoardList() {
		return boardMapper.selectAllBoardList();
	}

    /** 게시글 목록 조회 */
    @Override
    public List<BoardDTO> selectBoardList(BoardSearchVO searchVO) throws Exception {
        return boardMapper.selectBoardList(searchVO);
    }

    /** 게시글 총 개수 조회 */
    @Override
    public int selectBoardListTotCnt(BoardSearchVO searchVO) throws Exception {
        return boardMapper.selectBoardListTotCnt(searchVO);
    }

    /** 게시글 상세 조회 */
    @Override
    public BoardDTO selectBoardByIdx(Long idx) throws Exception {
        return boardMapper.selectBoardByIdx(idx);
    }

    /** 게시글 등록 */
    @Override
    public void insertBoard(BoardDTO dto) throws Exception {
        Long maxIdx = boardMapper.selectMaxBoardIdx(); // 현재 BOARD 테이블에서 최대 IDX 조회
        Long nextIdx = maxIdx + 1;                     // 다음 IDX 계산
        
        dto.setIdx(nextIdx);                           // DTO에 ID 설정        
        boardMapper.insertBoard(dto);                  // DB에 INSERT

        //System.out.println("현재 BOARD 테이블 maxIdx: " + maxIdx);  // 로그 확인용 출력
        //System.out.println("현재 BOARD 테이블 nextIdx: " + nextIdx);  // 로그 확인용 출력        
		//System.out.println(">>> insert 요청: " + dto.toString());
    }

    /** 게시글 수정 */
    @Override
    public void updateBoard(BoardDTO dto) throws Exception {
        boardMapper.updateBoard(dto);
    }

    /** 게시글 삭제 */
    @Override
    public void deleteBoard(Long idx) throws Exception {
        boardMapper.deleteBoard(idx);
    }

    /** 게시글 조회수 증가 */
    @Override
    public void increaseViewCount(Long idx) throws Exception {
        boardMapper.increaseViewCount(idx);
    }
    
    
}
