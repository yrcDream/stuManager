package yrc.zcc.jh.ssm.customer;

import java.util.List;

import yrc.zcc.jh.ssm.pojo.Score;
import yrc.zcc.jh.ssm.pojo.Student;

public class CstStudent extends Student {
	private Student student;
	private List<Score> stuScores;
	private int pc;
	
	public int getPc() {
		return pc;
	}

	public void setPc(int pc) {
		this.pc = pc;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public List<Score> getStuScores() {
		return stuScores;
	}

	public void setStuScores(List<Score> stuScores) {
		this.stuScores = stuScores;
	}
	
	

}
