package web.controller;

import java.util.List;

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
	public void boardDetail(Model model, @RequestParam String boardno) {
		
		int board_no = Integer.parseInt(boardno);
		
		Board Detail = boardService.getBoardDetail(board_no);
		model.addAttribute("detail", Detail);
	}
}
