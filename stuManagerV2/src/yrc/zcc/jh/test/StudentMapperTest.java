package yrc.zcc.jh.test;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import yrc.zcc.jh.ssm.customer.CstStudent;
import yrc.zcc.jh.ssm.mapper.StudentMapper;
import yrc.zcc.jh.ssm.queryInfo.QueryInfoVal;

class StudentMapperTest {

	@Test
	void testSelectByQueryInfoAndLimit() {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("spring/application-*.xml");
		StudentMapper mapper = (StudentMapper)context.getBean("StudentMapper");
		QueryInfoVal info = new QueryInfoVal();
		CstStudent stu  = new CstStudent();
		stu.setXb("男");
		info.setCstStudent(stu);
		info.setPsize(5);
		mapper.selectByQueryInfoAndLimit(info);
	}

}
