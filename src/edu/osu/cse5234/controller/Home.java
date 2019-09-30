package edu.osu.cse5234.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class Home {
	@RequestMapping(path = "/aboutUs", method = RequestMethod.GET)
	public String viewAboutUs(HttpServletRequest request, HttpServletResponse response) {
		//request.setAttribute("paymentInfo", new PaymentInfo());	
		return "AboutUs";
	}
		
	@RequestMapping(path = "/contactUs", method = RequestMethod.GET)
	public String viewContactUs(HttpServletRequest request, HttpServletResponse response) {
		//request.setAttribute("paymentInfo", new PaymentInfo());	
		return "ContactUs";
	}
}
