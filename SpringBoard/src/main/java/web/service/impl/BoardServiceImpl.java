package web.service.impl;

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
}
