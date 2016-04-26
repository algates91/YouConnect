package com.youconnect.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.Forum;
import com.youconnect.bean.Member;
import com.youconnect.dao.AccountDescDAO;
import com.youconnect.dao.ForumDAO;
import com.youconnect.dao.MemberDAO;

@Controller


public class ForumController {
	

	@RequestMapping(value="/popupex.html", method = RequestMethod.GET)
	public ModelAndView inviteMember(@ModelAttribute("forum") Forum forum, HttpServletRequest request,HttpSession ses) {
		//ForumDAO fd = new ForumDAO();
		
		//List<Forum> forumList = fd.selectByIds(forum);
		ModelAndView model = new ModelAndView("InviteMember");
		
		return model;
	}

	


	@RequestMapping(value="/forumView", method = RequestMethod.GET)
	public ModelAndView viewForum(@ModelAttribute("forum") Forum forum, HttpServletRequest request,HttpSession ses) {
		ForumDAO fd = new ForumDAO();
		
		List<Forum> forumList = fd.selectByIds(forum);
		ModelAndView model = new ModelAndView("ForumView");
		model.addObject("forumList", forumList);
		return model;
	}
	
	@RequestMapping(value="/ForumSubmit", method = RequestMethod.POST)
	public ModelAndView submitForum(@ModelAttribute("forum") Forum forum, HttpServletRequest request,HttpSession ses) {
		
		forum.setEmailId((String)ses.getAttribute("emailId"));
		ForumDAO fd = new ForumDAO();
		fd.insertForumDesc(forum);
		
		return new ModelAndView("redirect:" + "/forumView");
		
	}
	@RequestMapping(value="/viewForum", method = RequestMethod.GET)
	public ModelAndView viewComments(@ModelAttribute("forum") Forum forum, HttpServletRequest request,HttpSession ses) {
		
		String memberId= request.getParameter("MemberId");
		String title=null;
		String content = null;
		List<Forum> forumLists=null;
		if(memberId==null || memberId.isEmpty()){
			ses.setAttribute("ownerEmailId", request.getParameter("ownerEmailId"));
			ses.setAttribute("forumId", request.getParameter("forumId"));
			ForumDAO fd = new ForumDAO();
			forumLists=fd.selectAll(forum);
			
			if(!forumLists.isEmpty()&&forumLists.get(0)!=null){
				title= forumLists.get(0).getTitle();
				content = forumLists.get(0).getContent();
			}
		}
		else{
			
			
			
		}
		ModelAndView model = new ModelAndView("ForumContent");
		model.addObject("title", title);
		model.addObject("content", content);
		model.addObject("forumLists", forumLists);
		return model;
		
	}
	
	@RequestMapping(value="/SubmitForumReply", method = RequestMethod.POST)
	public ModelAndView SubmitForumReply(@ModelAttribute("forum") Forum forum, HttpServletRequest request,HttpSession ses) {
		
		forum.setEmailId((String)ses.getAttribute("ownerEmailId"));
		forum.setFriendEmailId((String)ses.getAttribute("emailId"));
		forum.setForumId(Integer.parseInt((String)ses.getAttribute("forumId")));
		
		ForumDAO fd = new ForumDAO();
		MemberDAO m =new MemberDAO();
		Member mem =m.selectById((String)ses.getAttribute("emailId"));
		List<Forum> forumLists=fd.selectAll(forum);
		if(forumLists!=null && !forumLists.isEmpty()){
			forum.setTitle(forumLists.get(0).getTitle());
			forum.setContent(forumLists.get(0).getContent());
			forum.setFriendName(mem.getMemberLastName()+", "+mem.getmemberFirstName());
		}
		
		fd.insertForumDescs(forum);
		
		//ModelAndView model = new ModelAndView("ForumContent");
	
		return new ModelAndView("redirect:" + "/forumView");
		
	}
	
	@RequestMapping(value="/MakeURLforMember", method = RequestMethod.POST)
	public ModelAndView makeURLforMember(@ModelAttribute("forum") Forum forum, HttpServletRequest request,HttpSession ses) {
		Member member = new Member();
				member.setEmailId((String)request.getAttribute("MemberemailId"));
				member.setmemberFirstName("Member");
				member.setMemberLastName("Member");
				member.setMemberGender("Gender");
				member.setMemberPhoneNumber("9090909090");
				member.setSearchIdClob("IAMAMEMBER");
		MemberDAO md = new MemberDAO();
		md.insert(member);
		
		forum.setEmailId((String)ses.getAttribute("ownerEmailId"));
		forum.setFriendEmailId((String)ses.getAttribute("emailId"));
		forum.setForumId(Integer.parseInt((String)ses.getAttribute("forumId")));
		String URL = "http://localhost:8080/YouConnect-SocialNetworking/viewForum?forumId="+forum.getForumId()+"&ownerEmailId="+
							forum.getEmailId()+"&memberEmailId="+member.getEmailId();
		ForumDAO fd = new ForumDAO();
		MemberDAO m =new MemberDAO();
		Member mem =m.selectById((String)ses.getAttribute("emailId"));
		List<Forum> forumLists=fd.selectAll(forum);
		if(forumLists!=null && !forumLists.isEmpty()){
			forum.setTitle(forumLists.get(0).getTitle());
			forum.setContent(forumLists.get(0).getContent());
			forum.setFriendName(mem.getMemberLastName()+", "+mem.getmemberFirstName());
		}
		
		fd.insertForumDescs(forum);
		
		//ModelAndView model = new ModelAndView("ForumContent");
	
		return new ModelAndView("redirect:" + "/forumView");
		
	}
	


}
