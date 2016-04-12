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
		
		String emailId = request.getParameter("emailId")==null?(String)ses.getAttribute("friendsemailId"):request.getParameter("emailId");
		StringBuffer displayContent = new StringBuffer();
		AccountDesc acctDesc = new AccountDesc();
		acctDesc.setEmailId((String)ses.getAttribute("emailId"));
		acctDesc.setFriendId(emailId);
		MemberDAO md = new MemberDAO();
		AccountDescDAO ad = new AccountDescDAO();
		member =md.selectById(emailId);
		acctDesc = ad.selectByIds(acctDesc);
		ses.setAttribute("friendsemailId", emailId);
		if(acctDesc!=null ){
			if(acctDesc.getSelfFlag()==1 && acctDesc.getFriendsFlag()==0){
				
				displayContent.append("<form method=\"get\" action=\"#\">") ;
				
				displayContent.append("<input type=\"submit\" value=\"Request Pending\" disabled/>");
				
				displayContent.append("<form/>");
				
				
			}
			else if(acctDesc.getSelfFlag()==1 && acctDesc.getFriendsFlag()==1){
				
				displayContent.append("<form method=\"get\" action=\"/YouConnect-SocialNetworking/unfriend\">") ;
				
				displayContent.append("<input type=\"submit\" value=\"UnFriends\" />") ;
				
				displayContent.append("</form>");
				
				
			}
			else if(acctDesc.getSelfFlag()==0 && acctDesc.getFriendsFlag()==1){
				
				displayContent.append("<form method=\"get\" action=\"/YouConnect-SocialNetworking/accept\">") ;
				
				displayContent.append("<input type=\"submit\" value=\"Accept\" />") ;
				
				displayContent.append("</form> ");
				
				displayContent.append("<form method=\"get\" action=\"/YouConnect-SocialNetworking/reject\">") ;
				
				displayContent.append("<input type=\"submit\" value=\"Reject\" />") ;
				
				displayContent.append("</form>");
				
				
			}
		}
		else{
			displayContent.append("<form method=\"get\" action=\"/YouConnect-SocialNetworking/addasfriend\">") ;
			
			displayContent.append("<input type=\"submit\" value=\"Add as a Friend\" />") ;
			
			displayContent.append("</form>");
			
			
		}
		ModelAndView model = new ModelAndView("ViewFriendProfile");
		model.addObject("displayContent", displayContent.toString());
		model.addObject("member",member);
		model.addObject("acctDesc",acctDesc);
		return model;
	}

	@RequestMapping(value="/addasfriend", method = RequestMethod.GET)
	public ModelAndView addFriends(@ModelAttribute("acctDesc") AccountDesc acctDesc, HttpSession ses) {
		
		AccountDescDAO ad = new AccountDescDAO();
		acctDesc.setSelfFlag(1);
		acctDesc.setFriendsFlag(0);
		acctDesc.setFriendId((String)ses.getAttribute("friendsemailId"));
		acctDesc.setEmailId((String) ses.getAttribute("emailId"));
		ad.insertAccoutDesc(acctDesc);
		acctDesc.setSelfFlag(0);
		acctDesc.setFriendsFlag(1);
		acctDesc.setFriendId((String) ses.getAttribute("emailId"));
		acctDesc.setEmailId((String)ses.getAttribute("friendsemailId"));
		ad.insertAccoutDesc(acctDesc);
		//ses.removeAttribute("friendsemailId");
		return new ModelAndView("redirect:" + "/viewProfile");
	}
	
	@RequestMapping(value="/accept", method = RequestMethod.GET)
	public ModelAndView acceptFriends(@ModelAttribute("acctDesc") AccountDesc acctDesc, HttpSession ses) {
		
		AccountDescDAO ad = new AccountDescDAO();
		acctDesc.setSelfFlag(1);
		acctDesc.setFriendsFlag(1);
		acctDesc.setFriendId((String)ses.getAttribute("friendsemailId"));
		acctDesc.setEmailId((String) ses.getAttribute("emailId"));
		ad.updateAccoutDesc(acctDesc);
		acctDesc.setSelfFlag(1);
		acctDesc.setFriendsFlag(1);
		acctDesc.setFriendId((String) ses.getAttribute("emailId"));
		acctDesc.setEmailId((String)ses.getAttribute("friendsemailId"));
		ad.updateAccoutDesc(acctDesc);
		//ses.removeAttribute("friendsemailId");
		return new ModelAndView("redirect:" + "/viewProfile");
	}
	
	@RequestMapping(value="/reject", method = RequestMethod.GET)
	public ModelAndView rejectFriends(@ModelAttribute("acctDesc") AccountDesc acctDesc, HttpSession ses) {
		
		AccountDescDAO ad = new AccountDescDAO();
		acctDesc.setFriendId((String)ses.getAttribute("friendsemailId"));
		acctDesc.setEmailId((String) ses.getAttribute("emailId"));
		ad.delete(acctDesc);
		acctDesc.setFriendId((String) ses.getAttribute("emailId"));
		acctDesc.setEmailId((String)ses.getAttribute("friendsemailId"));
		ad.delete(acctDesc);
		//ses.removeAttribute("friendsemailId");
		return new ModelAndView("redirect:" + "/viewProfile");
	}
	
	@RequestMapping(value="/unfriend", method = RequestMethod.GET)
	public ModelAndView unFriends(@ModelAttribute("acctDesc") AccountDesc acctDesc, HttpSession ses) {
		
		AccountDescDAO ad = new AccountDescDAO();
		acctDesc.setFriendId((String)ses.getAttribute("friendsemailId"));
		acctDesc.setEmailId((String) ses.getAttribute("emailId"));
		ad.delete(acctDesc);
		acctDesc.setFriendId((String) ses.getAttribute("emailId"));
		acctDesc.setEmailId((String)ses.getAttribute("friendsemailId"));
		ad.delete(acctDesc);
		//ses.removeAttribute("friendsemailId");
		return new ModelAndView("redirect:" + "/viewProfile");
	}
	
	@RequestMapping(value="/editprofile.html", method = RequestMethod.GET)
	public ModelAndView getProfilePage(HttpServletRequest request, @ModelAttribute("member") Member member) {

		MemberDAO mem = new MemberDAO();
		member = mem.selectById(request.getSession().getAttribute("emailId").toString());
		
		ModelAndView model = new ModelAndView("EditProfile");
		model.addObject("emailId", request.getSession().getAttribute("emailId"));
		model.addObject("firstname", member.getmemberFirstName());
		model.addObject("lastname", member.getMemberLastName());
		model.addObject("gender", member.getMemberGender());
		model.addObject("dob", member.getMemberDOB());
		model.addObject("phone", member.getMemberPhoneNumber());

		return model;
	}
	
	@RequestMapping(value="/editPassword.html", method = RequestMethod.GET)
	public ModelAndView getEditPasswordPage() {

		ModelAndView model = new ModelAndView("UpdatePassword");

		return model;
	}
	
}
