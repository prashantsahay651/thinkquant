package com.thinkquant.favoritething.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.thinkquant.favoritething.service.FavoriteThingServiceImpl;

@Controller
public class WebPageController {

	@Autowired
	private FavoriteThingServiceImpl favoriteThingServiceImpl;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/listallfavoritething")
	public String listallfavoritething(HttpServletRequest request) {
		request.setAttribute("favoriteThings", favoriteThingServiceImpl.getAllFavoriteThing());
		return "listallfavoritething";
	}

	@GetMapping("/editfavoritething")
	public String editfavoritething(Integer favoriteThingId, HttpServletRequest request) {
		request.setAttribute("favoriteThing", favoriteThingServiceImpl.getFavoriteThingById(favoriteThingId));
		return "editfavoritething";
	}

	@ExceptionHandler(Exception.class)
	public RedirectView handleMyException(Exception ex, RedirectAttributes attributes) {

		attributes.addFlashAttribute("failure", "Something Went Wrong");
		return new RedirectView("/");
	}

}
