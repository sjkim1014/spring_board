package web.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.dto.Board;
import web.service.face.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public void boardList(Model model) {
		
		List<Board> list = boardService.getList();
		System.out.println(list);
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value="/board/detail", method=RequestMethod.GET)
	public void boardDetail(Model model, @RequestParam String board_no) {
		
		int boardno = Integer.parseInt(board_no);
		
		logger.info("조회수 증가");
		boardService.hitUp(boardno);

		logger.info("게시글 상세 폼 노출");
		Board Detail = boardService.getBoardDetail(boardno);
		model.addAttribute("detail", Detail);
		
	}
	
	@RequestMapping(value="/board/write", method=RequestMethod.GET)
	public void boardWrite(Model model) {
		logger.info("글 작성 폼 노출");
	}
	
	@RequestMapping(value="/board/write", method=RequestMethod.POST)
	public String boardInsert(Model model, HttpSession session, 
			@RequestParam String title, String content, @RequestParam HashMap<String, String> map) {

		map.put("id", (String) session.getAttribute("id"));
		map.put("nick", (String) session.getAttribute("nick"));
		
//		jsp에서 form 으로 넘어오는 fileno, title, content는 map 으로 자동으로 들어감 개좋다!
//		map.put("title", title);
//		map.put("content", content);

//		System.out.println(map);
		boardService.insert(map);
		
		logger.info("글 작성 db 삽입완료");
		return "redirect:/board/list";
	}
	
	
	@RequestMapping(value="/board/update", method=RequestMethod.GET)
	public void boardUpdate(Model model, @RequestParam String board_no) {
		logger.info("수정 할 게시글 폼 생성");
		Board board = boardService.getBoardByBno(board_no);
		model.addAttribute("update", board);
		
	}
	
	@RequestMapping(value="/board/update", method=RequestMethod.POST)
	public String boardUpdate(Model model, @RequestParam HashMap<String, String> map) {
		boardService.updateBoard(map);
		logger.info("게시글 DB 업데이트 완료");
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public String boardDelete(Model model, @RequestParam String board_no) {
	
		boardService.boardDelete(board_no);
		
		logger.info("게시글 DB 삭제완료");
		return "redirect:/board/list";
	}
}
