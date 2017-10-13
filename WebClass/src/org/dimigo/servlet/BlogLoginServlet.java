package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		response.setContentType("text/html;charset=utf-8");
		
		HashMap<String, String> map = new HashMap<String, String>();
		Gson gson = new Gson();
		
		// id, pwd 정합성 체크
		boolean result = true;
		
		if("test@naver.com".equals(id)) {
			// 세션에 사용자 정보 생성
			HttpSession session = request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("정유정");
			user.setNickname("의적");
			
			session.setAttribute("user", user);
			session.setAttribute("name", "정유정");
			
			session.setAttribute("logged_in", "true");
			
			map.put("name", "정유정");
			map.put("nickname", "의적");
			map.put("status", "success");
			map.put("msg", "정유정님, 로그인되었습니다.");
		} else {
			request.setAttribute("msg", "error");
			
			map.put("status", "fail");
			map.put("msg", "로그인에 실패했습니다.");
		}
		
		PrintWriter out = response.getWriter();
		
		out.println((String)gson.toJson(map));
		
		out.close();
	}

}
