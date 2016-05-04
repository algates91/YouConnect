package com.youconnect.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.AccountDesc;
import com.youconnect.dao.AccountDescDAO;

@Controller
public class GroupController {
	
	@RequestMapping(value="/groupView.html", method = RequestMethod.GET)
	public ModelAndView getGroupPage() {

		ModelAndView model = new ModelAndView("TempGroupView");

		return model;
	}
	
	@RequestMapping(value="/viewGroups.html", method = RequestMethod.GET)
	public ModelAndView getViewGroupsPage(HttpSession ses) {

//		StringBuffer sb= new StringBuffer();
//		//GroupDescDAO gdd = new GroupDescDAO();
//		List<AccountDesc> grpdesclst= ad.selectFriendsByIds(ses.getAttribute("emailId"));
//		int count=0;
//		sb.append("<center><h2>Groups List</h2></center>");
//		sb.append("<table>");
//		for(AccountDesc m: acctdesclst){
//			if(m.getSelfFlag()==1 && m.getFriendsFlag()==1){
//				count++;
//			sb.append("<tr>");
//				sb.append("<td>"+ Integer.toString(count)+"</td>");
//				
//				sb.append("<td> ") ;
//				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getFriendId()+">");
//				sb.append(m.getLastName()+", "+m.getFirstName());	
//				sb.append("</a>");
//				sb.append(("</td>"));
//			sb.append("</tr>");
//			
//			
//		}
//		}
//		if(count<=0){
//			sb.append("<tr> No Friends to list at this time. </tr>");
//		}
//		sb.append("</table>");
//		
//		 count=0;
//		sb.append("<center><h2>Request Pending</h2></center>");
//		sb.append("<table>");
//		for(AccountDesc m: acctdesclst){
//			if(m.getSelfFlag()==1 && m.getFriendsFlag()==0){
//				count++;
//			sb.append("<tr>");
//				sb.append("<td>"+ Integer.toString(count)+"</td>");
//				
//				sb.append("<td> ") ;
//				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getFriendId()+">");
//				sb.append(m.getLastName()+", "+m.getFirstName());	
//				sb.append("</a>");
//				sb.append(("</td>"));
//			sb.append("</tr>");
//			
//			
//		}
//		}
//		if(count<=0){
//			sb.append("<tr> No Request pending at this time. </tr>");
//		}
//		sb.append("</table>");
//		
//		count=0;
//		sb.append("<center><h2>Awaiting Response</h2></center>");
//		sb.append("<table>");
//		for(AccountDesc m: acctdesclst){
//			if(m.getSelfFlag()==0 && m.getFriendsFlag()==1){
//				count++;
//			sb.append("<tr>");
//				sb.append("<td>"+ Integer.toString(count)+"</td>");
//				
//				sb.append("<td> ") ;
//				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getFriendId()+">");
//				sb.append(m.getLastName()+", "+m.getFirstName());	
//				sb.append("</a>");
//				sb.append(("</td>"));
//			sb.append("</tr>");
//			
//		}
//			
//		}
//		if(count<=0){
//			sb.append("<tr> No Friends who are awaiting your response at this time. </tr>");
//		}
//		sb.append("</table>");
//		//md.insert(member);
		ModelAndView model = new ModelAndView("ViewGroupDetails");
		//model.addObject("displayContent", sb.toString());
		
		return model;
	}

}
