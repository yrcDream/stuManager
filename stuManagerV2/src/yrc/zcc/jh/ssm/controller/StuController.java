package yrc.zcc.jh.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yrc.zcc.jh.ssm.customer.CstStudent;
import yrc.zcc.jh.ssm.pojo.Score;
import yrc.zcc.jh.ssm.pojo.Student;
import yrc.zcc.jh.ssm.queryInfo.QueryInfoVal;
import yrc.zcc.jh.ssm.service.ScoService;
import yrc.zcc.jh.ssm.service.StuService;
import yrc.zcc.jh.tools.PageBean;
import yrc.zcc.jh.tools.QueryUtils;

@Controller
@RequestMapping("stu")
public class StuController {
	
	@Autowired
	private StuService stuService;
	
	@Autowired
	private ScoService scoService;
	@RequestMapping("/goQueryUI")
	public String  goQueryGUI() {
		return "query";
	}
	
	@RequestMapping("/findStuByQueryInfo")
	public ModelAndView findStuByQueryInfo(HttpServletRequest request,
			CstStudent cstStudent,ModelAndView mv) throws Exception {
		QueryInfoVal queryInfoVal = new QueryInfoVal();
		PageBean<CstStudent> pagebean = new PageBean<CstStudent>();
		pagebean.setPcode(cstStudent.getPc());
		System.out.println(cstStudent.getPc());
		pagebean.setUrl(QueryUtils.dealwithUrl(request));
		
		queryInfoVal.setCstStudent(cstStudent);
		queryInfoVal.setPsize(pagebean.getPsize());
		pagebean.setTrcored(stuService.getItemsCountByQueryInfo(queryInfoVal));
		List<CstStudent> beanList = stuService.findStuByQueryInfo(queryInfoVal);
		for(CstStudent stu: beanList) {
			List<Score> scores =  scoService.findScoreByXh(stu.getXh());
			stu.setStuScores(scores);
		}
		pagebean.setBeanList(beanList);
		mv.addObject("pb", pagebean);
		mv.setViewName("show");
		return mv;
	}

}
