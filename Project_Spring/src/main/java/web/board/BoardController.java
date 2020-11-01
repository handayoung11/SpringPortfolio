package web.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.user.UserVO;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/getBoardList.do")
	public String getBoardList(Model model) {
		model.addAttribute("boardList", boardService.getBoardList());
		return "/board/getBoardList.jsp";
	}
	
	@RequestMapping("/boardDetail.do")
	public String getBoardDetail(BoardVO board, Model model, HttpSession session) {
		board = boardService.getBoard(board);
		model.addAttribute("board", board);
		UserVO user = (UserVO)session.getAttribute("loger");
		
		String hidden="hide";
		if(user!=null) {
			if((user.getIdx()+"").equals(board.getBwriter())) 
				hidden="";
		}
		model.addAttribute("hide", hidden);
		return "/board/boardDetail.jsp";
	}
	
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO board) {
		boardService.insertBoard(board);
		return "redirect:/getBoardList.do";
	}
	
	@RequestMapping("/goToInsertBoard.do")
	public String goToInsertBoard(HttpSession session, Model model) {
		UserVO user = (UserVO)session.getAttribute("loger");
		if(user==null) {
			model.addAttribute("msg", "로그인 후 이용해주세요.");
			model.addAttribute("title", "글 등록");
			return "/msg/msg.jsp";
		}
		model.addAttribute("user", user);
		return "/board/insertBoard.jsp";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO board) {
		boardService.deleteBoard(board);
		return "/getBoardList.do";
	}
	
	@RequestMapping("/editBoard.do")
	public String editBoard(BoardVO board, Model model) {
		model.addAttribute("board", boardService.getBoard(board));
		return "/board/editBoard.jsp";
	}
	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(BoardVO board) {
		System.out.println(board);
		boardService.updateBoard(board);
		return "/getBoardList.do";
	}
}
