package com.youconnect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Member;
import com.youconnect.dao.MemberDAO;


@Controller
public class SignUpController {


	@RequestMapping(value="/welcome.html", method = RequestMethod.GET)
	public ModelAndView getWelcomePage() {

		ModelAndView model = new ModelAndView("HelloPage");

		return model;
	}

	@RequestMapping(value="/submitForm.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("member") Member member) {

		MemberDAO md = new MemberDAO();
		md.insert(member);
		ModelAndView model = new ModelAndView("AdmissionSuccess");
		model.addObject("headerMessage","These are the bean values");
		
		return model;
	}
	
}

