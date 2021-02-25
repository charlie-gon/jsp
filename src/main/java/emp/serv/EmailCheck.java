package emp.serv;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

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
		
		String email = request.getParameter("email");
		EmpVO empVo = EmpDAO.getInstance().selectOneByEmail(email);
		
		// https://github.com/google/gson/blob/master/UserGuide.md#TOC-Serializing-and-Deserializing-Generic-Types
		  Gson gson = new Gson(); 
		
		  response.setContentType("text/html; charset=utf-8");
		  HashMap<String, Object> map = new HashMap<String,Object>();
		  
			if (empVo == null) {
				map.put("email", true);
				response.getWriter().print(gson.toJson(map));
			} else {
				map.put("email", false);
				response.getWriter().print(gson.toJson(empVo));
			}
		
		// XML
//		response.setContentType("text/xml; charset=utf-8");
//		if(empVo == null) {
//			response.getWriter().append("<email>")
//								.append("true")
//								.append("</email>");
//		}else {
//			response.getWriter().append("<email>")
//								.append("false")
//								.append("</email>");
//		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
