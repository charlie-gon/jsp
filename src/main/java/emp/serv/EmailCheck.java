package emp.serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.EmpDAO;
import emp.dao.EmpVO;

/**
 * Servlet implementation class EmailCheck
 */
public class EmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EmailCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// email 파라미터 받기
		response.setContentType("text/html; charset=utf-8");
		
		String email = request.getParameter("email");
		
		EmpVO empVo = EmpDAO.getInstance().selectOneByEmail(email);
		if(empVo == null) {
			response.getWriter().print("사용 불가능한 이메일");
		}else {
			response.getWriter().print("사용 가능한 이메일");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
