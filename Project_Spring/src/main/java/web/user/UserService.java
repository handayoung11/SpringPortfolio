package web.user;

import java.util.List;

public interface UserService {

	void insertUser(UserVO vo);

	void updateUser(UserVO user);

	void deleteUser(UserVO vo);

	UserVO getUser(UserVO vo);

	UserVO getLoger(UserVO vo);

	List<UserVO> getUserList(UserVO vo);

}