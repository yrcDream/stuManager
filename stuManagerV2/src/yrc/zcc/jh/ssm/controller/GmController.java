package yrc.zcc.jh.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yrc.zcc.jh.ssm.customer.CstGm;
import yrc.zcc.jh.ssm.pojo.Gm;
import yrc.zcc.jh.ssm.service.GmService;

@Controller
@RequestMapping("/gm")
public class GmController {

	@Autowired
	private GmService gmService;
	
	@RequestMapping("/demo")
	public ModelAndView demo() {
		System.out.println("我进来了");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("b");
		return mv;
	}
	
	@RequestMapping("/findGmByGid")
	public ModelAndView findGmByGid(String gid) throws Exception {
		Gm gm = gmService.findGmByGid(gid);
		ModelAndView mv = new ModelAndView();
		String name = gm.getName();
		System.out.println();
		mv.addObject("name", name);
		mv.setViewName("b");
		return mv;
	}
	
	
	@RequestMapping("/login")
	public ModelAndView gmLogin(CstGm custgm,HttpServletRequest request) throws Exception {
		/**
		 * 测试阶段，使用固定验证码进行测试
		 */
		ModelAndView mv = new ModelAndView();
		HttpSession httpSession = request.getSession();
		Gm gm = (Gm)httpSession.getAttribute("gm");
		if(gm !=null) {
			mv.setViewName("main");
			return mv;
		}
		String codeText = "0440";
		String inputCode  = custgm.getYzm();
		 System.out.println(custgm.getUsername()+","+custgm.getPwd()+","+inputCode); 
		if(inputCode==null || !codeText.equals(inputCode.trim())) {
			mv.addObject("user", custgm);
			mv.setViewName("login");	
			return mv;
		}
		gm = gmService.hasGm(custgm);
		if(gm!=null) {
			request.getSession().setAttribute("gm", gm);
			mv.setViewName("main");
		}else {
			mv.addObject("user", custgm);
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("/goModifyGUI")
	public ModelAndView goModifyGUI(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("currentGm", 
				(Gm)request.getSession().getAttribute("gm"));
		mv.setViewName("modifyInfo");
		return mv;
	}
	
	@RequestMapping("/GoModify")
	public ModelAndView GoModify(CstGm newgm,HttpServletRequest request
			,ModelAndView mv) throws Exception {
		HttpSession httpsession = request.getSession();
		Gm oldgm = (Gm)httpsession.getAttribute("gm");
		String oldPwd= oldgm.getPassword();
		String inputOldPwd = newgm.getPwd();
		if(!oldPwd.equals(inputOldPwd)) {
			mv.addObject("currentGm", oldgm);
			mv.setViewName("modifyInfo");
		}else {
			Gm gm = gmService.updateGmInfo(oldgm,newgm);
			if(gm!=null){
				httpsession.removeAttribute("gm");
				httpsession.setAttribute("gm", gm);
				mv.setViewName("main");
			}
		}
		
		return mv;
	}
}
