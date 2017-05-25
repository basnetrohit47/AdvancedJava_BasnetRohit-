package fr.epita.rohit.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.epita.rohit.dao.StudentDao;
import fr.epita.rohit.model.Student;
import fr.epita.rohit.services.StudentServices;


@Service
public class StudentServiceImpl implements StudentServices {

	@Autowired
	StudentDao dao;
	
	
	public List<Student> list() {
		return dao.list();

	}

	public boolean delete(Student student) {
		
		return dao.delete(student);
	}

	public boolean saveOrUpdate(Student student) {
		
		return dao.saveOrUpdate(student);
	}

}
