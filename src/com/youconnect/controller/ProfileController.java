package com.youconnect.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.Member;
import com.youconnect.dao.AccountDescDAO;
import com.youconnect.dao.MemberDAO;

@Controller

public class ProfileController {
	

	


	@RequestMapping(value="/viewProfile", method = RequestMethod.GET)
	public ModelAndView getProfile(Member member, HttpServletRequest request,HttpSession ses) {
		
		String emailId = request.getParameter("emailId");
		AccountDesc acctDesc = new AccountDesc();
		acctDesc.setEmailId(member.getEmailId());
		acctDesc.setFriendId(emailId);
		String emailIdSelf= (String)ses.getAttribute("emailId");
		MemberDAO md = new MemberDAO();
		AccountDescDAO ad = new AccountDescDAO();
		member =md.selectById(emailId);
		 acctDesc = ad.selectByIds(acctDesc);
		
		 ModelAndView model = new ModelAndView("ViewProfile");
		//emailId=emailId;
		return model;
	}

	@RequestMapping(value="/editprofile.html", method = RequestMethod.GET)
	public ModelAndView getProfilePage(@ModelAttribute("member") Member member, HttpServletRequest req) {

		ModelAndView model = new ModelAndView("EditProfile");
		model.addObject("emailId", req.getAttribute("emailId"));

		return model;
	}

	
	
}
