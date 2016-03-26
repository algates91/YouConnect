package com.youconnect.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Member {

	private String memberFirstName;
	private String memberLastName;
	private String passWord;
	private Date memberDOB;
	private String memberGender;
	private String memberPhoneNumber;
	private String profileId;
	private String emailId;
	
	public String getmemberFirstName() {
		return memberFirstName;
	}
	public void setmemberFirstName(String memberFirstName) {
		this.memberFirstName = memberFirstName;
	}
	public String getMemberLastName() {
		return memberLastName;
	}
	public void setMemberLastName(String memberLastName) {
		this.memberLastName = memberLastName;
	}
	public Date getMemberDOB() {
		return memberDOB;
	}
	public void setMemberDOB(String memberDOB) {
		Date date =null;
		if(memberDOB!= null && !memberDOB.isEmpty()){
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm");		
				
			try {

				date = formatter.parse(memberDOB);

			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		this.memberDOB = date;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}
	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}
	public String getProfileId() {
		return profileId;
	}
	public void setProfileId(String profileId) {
		this.profileId = profileId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	

}