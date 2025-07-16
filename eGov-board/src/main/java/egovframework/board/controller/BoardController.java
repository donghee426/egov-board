/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.board.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.board.dto.BoardDTO;
import egovframework.board.dto.BoardSearchVO;
import egovframework.board.mapper.BoardMapper;
import egovframework.board.service.BoardService;
import egovframework.example.sample.service.SampleDefaultVO;


@Controller
public class BoardController {
	
	@Resource(name = "boardService")
	private BoardService boardService;
	
	//pageUnit, pageSize 같은 페이징 정보 context-properties.xml
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;
	
    /** BoardMapper 주입 */
    @Resource(name = "boardMapper")
    private BoardMapper boardMapper;
	
    /** 게시글 조회 (페이징&검색포함) */
	@RequestMapping(value = "/boardList.do")
	public String selectSampleList(@ModelAttribute("searchVO") BoardSearchVO searchVO, ModelMap model) throws Exception {

	    // 1. 페이지네이션 설정
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));
	    PaginationInfo paginationInfo = new PaginationInfo();
	    
	    paginationInfo.setCurrentPageNo(searchVO.getPageIndex()); // 현재 페이지 번호
	    paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage()); // 페이지당 게시글 수
	    paginationInfo.setPageSize(searchVO.getPageSize()); // 페이지 사이즈
	    searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex()); // LIMIT 시작 인덱스
	    searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
	    searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	    // 2. DB에서 게시글 목록 및 총 개수 조회
	    List<BoardDTO> boardList = boardService.selectBoardList(searchVO);
	    int totCnt = boardService.selectBoardListTotCnt(searchVO);
	    paginationInfo.setTotalRecordCount(totCnt); // 전체 게시글 수
		
	    // 3. 뷰에 데이터 전달
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("paginationInfo", paginationInfo);
		
		return "board/boardList";
	}

	/** 게시글 상세 조회 */
	@RequestMapping(value = "/view.do")
	public String boardView(@RequestParam("idx") Long idx, Model model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1. 쿠키 확인
		Cookie[] cookies = request.getCookies();
		boolean isViewed = false;
		
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("viewed_" + idx)) {
					isViewed = true;
					break;
				}
			}
		}
		
		// 2. 조회수 증가(쿠키 없읗 때만)
		if(!isViewed) {
			boardService.increaseViewCount(idx);
			
			// 3. 쿠키 생성
			Cookie viewCookie = new Cookie("viewed_" + idx, "true");
			viewCookie.setMaxAge(60 * 60); 	//1시간 유지
			viewCookie.setPath("/");		//전체 경로에서 유효
			response.addCookie(viewCookie);
			
		}
		
		// 4. 게시글 조회
	    BoardDTO board = boardService.selectBoardByIdx(idx);
	    model.addAttribute("board", board);
	    
	    return "board/view";
	}

	/** 게시글 등록화면 */	
	@RequestMapping(value = "/write.do")
	public String boardWriteView(Model model) {
	    model.addAttribute("boardDTO", new BoardDTO());
	    return "board/write";
	}
	
	/** 게시글 등록처리 */
	@RequestMapping(value = "/writeProc.do", method = RequestMethod.POST)
	public String insertBoard(@ModelAttribute("boardDTO") BoardDTO dto) throws Exception {
	    boardService.insertBoard(dto);
	    return "redirect:/boardList.do";
	}

	/** 게시글 수정화면 */	
	@RequestMapping("/update.do")
	public String boardUpdateForm(@RequestParam("idx") Long idx, Model model) throws Exception {
	    BoardDTO board = boardService.selectBoardByIdx(idx);
	    model.addAttribute("boardDTO", board);
	    
	    System.out.println(">>>>>" + board.getIdx());
	    return "board/write"; 
	}

    /** 게시글 수정처리 */
    @RequestMapping(value = "/updateProc.do", method = RequestMethod.POST)
    public String updateBoard(@ModelAttribute("boardDTO") BoardDTO dto) throws Exception {
        boardService.updateBoard(dto);
        return "redirect:/view.do?idx=" + dto.getIdx();
    }

	/** 게시글 삭제처리 */
    @RequestMapping(value = "/deleteProc.do", method = RequestMethod.POST)
    public String deleteBoard(@RequestParam("idx") Long idx) throws Exception {
    	boardService.deleteBoard(idx);
    	return "redirect:/boardList.do";
    }

}
