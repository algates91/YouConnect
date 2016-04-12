package com.youconnect.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Account;
import com.youconnect.bean.Member;
import com.youconnect.dao.AccountDAO;
import com.youconnect.dao.MemberDAO;


@Controller
@SessionAttributes("Member")
public class SignUpController {


	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView getWelcomePage() {

		ModelAndView model = new ModelAndView("SignUp");

		return model;
	}
	
	@RequestMapping(value="/logOut", method = RequestMethod.GET)
	
	public ModelAndView doLogout(@ModelAttribute("acct") Account acct, HttpSession ses, HttpServletRequest req){
		
		ses = req.getSession(false);
		if(ses!=null)
			ses.invalidate();
		
		acct =null;
		ModelAndView model = new ModelAndView("LoginPage");

		return model;
		
		
	}

	@RequestMapping(value="/submitForm", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("member") Member member, HttpSession ses) {
		
		member.setSearchIdClob(member.getmemberFirstName()+"|"+member.getMemberLastName()+"|"+member.getEmailId().split("@")[0]);
		
		Account acct=populateAccountBean(member);
		ses.setAttribute("emailId", member.getEmailId());
		ses.setAttribute("name", member.getmemberFirstName()+" "+ member.getMemberLastName());
		MemberDAO md = new MemberDAO();
		md.insert(member);
		md.insertAccout(acct);
		ModelAndView model = new ModelAndView("HomePage");
		
		return model;
	}
	
	@RequestMapping(value="/submitLogin", method = RequestMethod.POST)
	public ModelAndView submitLoginForm(@ModelAttribute("acct") Account acct, HttpSession ses,HttpServletRequest req) {
		ModelAndView model=null;
		
		try{
			ses=req.getSession(true);
			ses.setAttribute("emailId", acct.getLoginId());
			//ses.setAttribute("name", member.getmemberFirstName()+" "+ member.getMemberLastName());
		AccountDAO ad = new AccountDAO();
		
		acct = ad.selectLogin(acct);
		if(acct!=null){
			
			if(acct.getAccountFlag()==1){
				model = new ModelAndView("HomePage");
				
			}
		}
		else{
			
			model = new ModelAndView("LoginPage");
			model.addObject("headerMessage","Login details invalid! Please try again");			
		}
		
	
	}
	catch(Exception ex){
		
		model = new ModelAndView("LoginPage");

		return model;
		
		
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
	
	@RequestMapping(value="/homePageRedirect", method = RequestMethod.GET)
	public ModelAndView getHomePageRedirect() {

		ModelAndView model = new ModelAndView("HomePage");

		return model;
	}
	
	@RequestMapping(value="/updateForm.html", method = RequestMethod.POST)
	public ModelAndView submitUpdationForm(HttpServletRequest request, @ModelAttribute("member") Member member) {

		MemberDAO md = new MemberDAO();
		member.setEmailId(request.getParameter("emailId"));
		member.setmemberFirstName(request.getParameter("memberFirstName"));
		member.setMemberLastName(request.getParameter("memberLastName"));
		member.setMemberGender(request.getParameter("memberGender"));
		member.setMemberDOB(request.getParameter("memberDOB"));
		member.setMemberPhoneNumber(request.getParameter("memberPhoneNumber"));
		md.update(member);
		ModelAndView model = new ModelAndView("HomePage");
		
		return model;
	}
	
	@RequestMapping(value="/updatePassword.html", method = RequestMethod.POST)
	public ModelAndView submitUpdationForm(@ModelAttribute("account") Account account) {

		AccountDAO md = new AccountDAO();

		md.updatePassword(account);
		ModelAndView model = new ModelAndView("HomePage");
		
		return model;
	}
	
	@RequestMapping(value="/submitPassword", method = RequestMethod.POST)
	public ModelAndView submitPasswordForm(HttpServletRequest request, @ModelAttribute("acct") Account acct) {

		ModelAndView model = null;
		try{			
			AccountDAO ad = new AccountDAO();
			
			String pass1 = request.getParameter("passWord");
			String pass2 = request.getParameter("passWord2");
			
			if(pass1.equals(pass2)){
				
				acct.setLoginId(request.getSession().getAttribute("emailId").toString());
				acct.setPassWord(request.getParameter("passWord"));
				ad.updatePassword(acct);
				model = new ModelAndView("HomePage");
				model.addObject("headerMessage","Password updated!");
			}
			else{
				
				model = new ModelAndView("UpdatePassword");
				model.addObject("headerMessage","Passwords do not match! Please try again");			
			}
			
		
		}
		catch(Exception ex){
			//model = new ModelAndView("UpdatePassword");
			
		}
		return model;
	}
}

