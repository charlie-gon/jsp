package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.DeptDAO;
import emp.dao.DeptVO;
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
		doGet(request, response);
	}

}