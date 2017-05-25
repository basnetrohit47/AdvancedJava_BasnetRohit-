package fr.epita.rohit.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.epita.rohit.dao.StudentDao;
import fr.epita.rohit.model.Student;



@Repository
@Transactional
public class StudentDaoImpl implements StudentDao {

	
	@Autowired
	SessionFactory session;
	
	public List<Student> list() {
	return session.getCurrentSession().createQuery("from Student").list();
		
	}

	public boolean delete(Student student) {
		try{
			session.getCurrentSession().delete(student);
		}catch(Exception ex){
			return false;	
		}
		return true;
	}

	public boolean saveOrUpdate(Student student) {
		session.getCurrentSession().saveOrUpdate(student);
		return true;
	}

}
