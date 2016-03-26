package com.youconnect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Account;
import com.youconnect.bean.Member;
import com.youconnect.dao.AccountDAO;
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
		
		Account acct=populateAccountBean(member);

		MemberDAO md = new MemberDAO();
		md.insert(member);
		md.insertAccout(acct);
		ModelAndView model = new ModelAndView("AdmissionSuccess");
		model.addObject("headerMessage","These are the bean values");
		
		return model;
	}
	
	@RequestMapping(value="/submitLogin", method = RequestMethod.POST)
	public ModelAndView submitLoginForm(@ModelAttribute("acct") Account acct) {
		
		ModelAndView model=null;

		AccountDAO ad = new AccountDAO();
		
		acct = ad.selectLogin(acct);
		if(acct!=null){
			
			if(acct.getAccountFlag()==1){
				model = new ModelAndView("AdmissionSuccess");
				model.addObject("headerMessage","These are the bean values");
				
			}
		}
		else{
			
			model = new ModelAndView("LoginPage");
			model.addObject("headerMessage","Login details invalid! Please try again");
			
		}
		return model;
	}
	
	private Account populateAccountBean(Member member) {
		
		Account acct = new Account();
		acct.setAccountFlag(1);
		acct.setPassWord(member.getPassWord());
		acct.setLoginId(member.getEmailId());
		
		return acct;
	}

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView submitLoginForm() {

		ModelAndView model = new ModelAndView("LoginPage");

		return model;

	}
	
}

