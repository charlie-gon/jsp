package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

public class EmpUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmpUpdate() {
        super();
    }

    // 수정페이지 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<JobVO> jobList = JobDAO.getInstance().selectJobList();
		ArrayList<DeptVO> deptList = DeptDAO.getInstance().selectDeptList();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		
		// 수정할 사원정보를 단건조회
		String empId = request.getParameter("employee_id");
		EmpVO empVo = EmpDAO.getInstance().selectOne(empId);
		request.setAttribute("empVo", empVo);
		request.getRequestDispatcher("/emp/empInsert.jsp").forward(request, response);
	}

	// 수정 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터 VO 담기
		String empId = request.getParameter("employee_id");
	}

}
