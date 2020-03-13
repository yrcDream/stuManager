package yrc.zcc.jh.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import yrc.zcc.jh.ssm.customer.CstStudent;
import yrc.zcc.jh.ssm.mapper.StudentMapper;
import yrc.zcc.jh.ssm.pojo.Student;
import yrc.zcc.jh.ssm.pojo.StudentExample;
import yrc.zcc.jh.ssm.pojo.StudentExample.Criteria;
import yrc.zcc.jh.ssm.queryInfo.QueryInfoVal;

@Service("stuServiceImp")
public class StuServiceImp implements StuService {

	@Autowired
	private StudentMapper studentMapper;
	@Override
	public List<Student> findStuByQueryInfo(QueryInfoVal queryInfo) throws Exception {
		List<Student> stuLists = studentMapper.selectByQueryInfoAndLimit(queryInfo);
		return stuLists;
	}
	 
	@Override
	public int getItemsCountByQueryInfo(QueryInfoVal queryInfoval) throws Exception {
		StudentExample stuExample = new StudentExample();
		Criteria criteria = stuExample.createCriteria();
		CstStudent stu = queryInfoval.getCstStudent();
		
		if(stu.getXh()!=null && stu.getXh()!="") {
			criteria.andXhLike(stu.getXh());
		}
		if(stu.getXb()!=null && stu.getXb()!="") {
			criteria.andXbLike(stu.getXb());
		}
		if(stu.getXm()!=null && stu.getXm()!="") {
			criteria.andXmLike(stu.getXm());
		}
		if(stu.getEmail()!=null && stu.getEmail()!="") {
			criteria.andEmailLike(stu.getEmail());
		}
		return (int) studentMapper.countByExample(stuExample);
	}
	public static void main(String args[]) {
		  ApplicationContext context = new
	  ClassPathXmlApplicationContext("spring/applicationContext-*.xml");
		  
	  StudentMapper mapper = (StudentMapper)context.getBean("studentMapper");
	  
	  QueryInfoVal info = new QueryInfoVal(); 
	  CstStudent stu = new CstStudent();
	  stu.setXh("2017");
	  info.setCstStudent(stu);
	  stu.setPc(1);
	  info.setPsize(100);
	  mapper.selectByQueryInfoAndLimit(info); 
	  /*StudentExample example = new StudentExample();
	  Criteria criteria = example.createCriteria();
	  criteria.andXhLike("%2017%");
	  mapper.selectByExample(example);*/
	  
	 }
}
