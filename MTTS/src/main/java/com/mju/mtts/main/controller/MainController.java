package com.mju.mtts.main.controller;

import java.io.FileNotFoundException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import org.springframework.web.bind.annotation.RequestParam;

import com.mju.mtts.main.service.MainService;
import com.mju.mtts.vo.admin.AdminInfo;

/**
 * Handles requests for the application home page.
 */


@Controller
public class MainController {

	private static final Logger logger = LoggerFactory
			.getLogger(MainController.class);

	@Autowired
	private MainService mainService;

	
	@RequestMapping("/")
	public String GbmsList(
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm,
			@RequestParam(value = "seq", required = false) String seq) {

		logger.info("home");

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		mm.addAttribute("serverTime", formattedDate );
		
		mm.addAttribute("info", mainService.getAdminAll(seq));
		
		return "home";

	}


}
