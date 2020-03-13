package yrc.zcc.jh.test;

import org.junit.jupiter.api.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import yrc.zcc.jh.ssm.customer.CstGm;
import yrc.zcc.jh.ssm.service.GmService;
import yrc.zcc.jh.ssm.service.GmServiceImp;

class GmServiceImpTest extends GmServiceImp {

	@Test
	void testHasGm() throws Exception {
		CstGm gm = new CstGm();
		gm.setUsername("杨润春");
		gm.setPwd("123789");
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("spring/application-*.xml");
		GmService service = (GmService)ac.getBean("StudentMapper");
		
		service.hasGm(gm);
	}

}
