package web.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import web.user.UserDAO;
import web.user.UserVO;

@Repository
public class BoardDAO {
	@Autowired
	UserDAO userDAO;
	@Autowired
	SqlSessionTemplate sqlSession;

	public void insertBoard(BoardVO vo) {
		System.out.println("==> insert 작업");
		sqlSession.insert("board.insertBoard", vo);
	}

	public void updateBoard(BoardVO vo) {
		System.out.println("==> update 작업");
		sqlSession.update("board.updateBoard", vo);
	}

	public void deleteBoard(BoardVO vo) {
		System.out.println("==> delete 작업");
		sqlSession.delete("board.deleteBoard", vo.getBidx());
	}

	public BoardVO getBoard(BoardVO vo) {
		System.out.println("==> get 작업");
		return sqlSession.selectOne("board.getBoard", vo.getBidx());
	}

	public List<BoardVO> getBoardList() {
		System.out.println("==> getBoardList 작업");
		return sqlSession.selectList("board.getBoardList");
	}
}
