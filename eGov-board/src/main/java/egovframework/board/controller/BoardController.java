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
import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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


}
