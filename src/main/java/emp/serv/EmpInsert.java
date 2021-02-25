package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DateUtil;
import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

/**
 * Servlet implementation class EmpInsert
 */
public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmpInsert() {
        super();
    }

    // 등록 페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<JobVO> jobList = JobDAO.getInstance().selectJobList();
		ArrayList<DeptVO> deptList = DeptDAO.getInstance().selectDeptList();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		request.getRequestDispatcher("/emp/empInsert.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empid = request.getParameter("employee_id");
		String email = request.getParameter("email");
		
//		EmpVO vo = new EmpVO();
//		vo.setEmail(email);
//		vo.setEmployee_id(empid);
		
		String hire_date = request.getParameter("hire_date");
		
		// Builder = 객체 생성과 초기화를 한번에!
//		EmpVO vo = EmpVO.builder()
//								.employee_id(request.getParameter("employee_id"))
//								.job_id(request.getParameter("job_id"))
//								.email(request.getParameter("email"))
//								.hire_date(DateUtil.toDate(hire_date))
//								.build();
//		EmpDAO.getInstance().insert(vo);
		
		// forward = request 정보를 전달
		//request.getRequestDispatcher("empList").forward(request, response);
		 response.sendRedirect("empList");
	}

}
