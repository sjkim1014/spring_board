package web.service.face;

import java.util.HashMap;
import java.util.List;

import web.dto.Board;

public interface BoardService {

	public List<Board> getList();

	public Board getBoardDetail(int board_no);

	public void insert(HashMap<String, String> map);

	public void hitUp(int boardno);

	public Board getBoardByBno(String board_no);

	public void updateBoard(HashMap<String, String> map);

	public void boardDelete(String board_no);
}
