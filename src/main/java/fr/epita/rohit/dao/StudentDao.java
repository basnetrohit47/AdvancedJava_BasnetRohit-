package fr.epita.rohit.dao;

import java.util.List;

import fr.epita.rohit.model.Student;

public interface StudentDao {

	public List<Student>list();
	public boolean delete(Student student);
	public boolean saveOrUpdate(Student student);
}
