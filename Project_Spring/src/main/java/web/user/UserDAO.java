package web.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDAO")
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public void insertUser(UserVO vo) {
		System.out.println("==> insert 작업");
		sqlSession.insert("user.addUser", vo);
	}

	
	public void updateUser(UserVO vo) {
		System.out.println("==> update 작업");
		sqlSession.update("user.updateUser", vo);
	}

	
	public void deleteUser(UserVO vo) {
		System.out.println("==> delete 작업");
		sqlSession.delete("user.deleteUser", vo.getIdx());
	}
	
	
	public UserVO getUser(UserVO vo) {
		System.out.println("==> get 작업");
		return sqlSession.selectOne("user.getUser", vo.getIdx());
	}
	
	
	public UserVO getLoger(UserVO vo) {
		System.out.println("==> Loger작업");
		return sqlSession.selectOne("user.getLoger", vo);
	}
	
	
	public List<UserVO> getUserList(UserVO vo) {
		System.out.println("==> getUserList 작업");
		return sqlSession.selectList("user.getUserList", vo);
	}
}
