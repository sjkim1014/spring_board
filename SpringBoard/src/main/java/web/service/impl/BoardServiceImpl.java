package web.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.BoardDao;
import web.dto.Board;
import web.service.face.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardDao boardDao;
	
	@Override
	public List<Board> getList() {
		return boardDao.getList();
	}

	@Override
	public Board getBoardDetail(int board_no) {
		return boardDao.getBoardDetail(board_no);
	}

	@Override
	public void insert(HashMap<String, String> map) {
		boardDao.insert(map);
	}

	@Override
	public void hitUp(int boardno) {
		boardDao.hitUp(boardno);
	}

	@Override
	public Board getBoardByBno(String board_no) {
		return boardDao.getBoardByBno(board_no);
	}

	@Override
	public void updateBoard(HashMap<String, String> map) {
		boardDao.updateBoard(map);
	}

	@Override
	public void boardDelete(String board_no) {
		boardDao.boardDelete(board_no);
	}
}
