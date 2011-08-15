package com.ColorQRCode.server;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home() {
		logger.info("Welcome index!");
		return "index";
	}
	
	@RequestMapping(value="/qrcode", method=RequestMethod.GET)
	public String qrcode() {
		logger.info("Welcome home!");
		return "home";
	}
	@RequestMapping(value="/split", method=RequestMethod.GET)
	public String split() {
		logger.info("Welcome split!");
		return "split";
	}
	@RequestMapping(value="/color", method=RequestMethod.GET)
	public String color() {
		logger.info("Welcome color!");
		return "color";
	}
}

