package QLKH.data.view;

import java.sql.SQLException;
import java.util.List;

import QLKH.data.business.StudentBUS;
import QLKH.data.model.Student;

/**
 * @description:  
 * @author: Admin
 * @time: 7:37:59 PM
 * @date: Mar 23, 2018
 */
public class Program {

	static StudentBUS studentBUS;

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		studentBUS = new StudentBUS();
		List<Student> list = studentBUS.getAllStudent();
		studentBUS.showStudentList(list);
		
		
	}

}
