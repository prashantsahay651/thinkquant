package com.thinkquant.favoritething.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.thinkquant.favoritething.bean.FavoriteThing;
import com.thinkquant.favoritething.exception.IdNotFoundException;
import com.thinkquant.favoritething.responseobject.FavoriteThingResponseObject;
import com.thinkquant.favoritething.service.FavoriteThingServiceImpl;

@Controller
public class FavoriteThingController {

	@Autowired
	private FavoriteThingServiceImpl favoriteThingServiceImpl;
	

	@PostMapping("/WebAddFavoriteThing")
	public RedirectView addFavoriteThing(FavoriteThing favoriteThing, RedirectAttributes attributes) {
		try {
			favoriteThingServiceImpl.addFavoriteThing(favoriteThing);
			attributes.addFlashAttribute("success", "FavoriteThing Added");
			return new RedirectView("/");
		} catch (Exception e) {
			attributes.addFlashAttribute("failure", "Something Went Wrong");
			return new RedirectView("/");
		}

	}

	@PostMapping("/WebEditFavoriteThing")
	public RedirectView editFavoriteThing(FavoriteThing favoriteThing, RedirectAttributes attributes) {
		try {
			favoriteThing = favoriteThingServiceImpl.editFavoriteThing(favoriteThing);
			attributes.addFlashAttribute("success", "FavoriteThing Edited");
			return new RedirectView("editfavoritething?favoriteThingId=" + favoriteThing.getFavoriteThingId() + "");
		} catch (IdNotFoundException e) {
			attributes.addFlashAttribute("failure", "Id Not Fount");
			return new RedirectView("/");
		}catch (Exception e) {
			attributes.addFlashAttribute("failure", "Something Went Wrong");
			return new RedirectView("editfavoritething?favoriteThingId=\"+favoriteThing.getFavoriteThingId()+\"\"");
		}

	}

	@GetMapping("/RestGetAllFavoriteThing")
	@ResponseBody
	public List<FavoriteThing> getAllFavoriteThing() {
		try {
			return favoriteThingServiceImpl.getAllFavoriteThing();
		} catch (Exception e) {
			return null;
		}

	}

	@RequestMapping("/RestAddFavoriteThing")
	@ResponseBody
	public FavoriteThingResponseObject addFavoriteThing(@RequestBody FavoriteThing favoriteThing) {
		try {
			favoriteThing= favoriteThingServiceImpl.addFavoriteThing(favoriteThing);
			return new FavoriteThingResponseObject(favoriteThing,true,"Favorite Thing Added Sucessfully");
		} catch (Exception e) {
			return new FavoriteThingResponseObject(false,"Something Went Wrong");
		}

	}

	@PostMapping("/RestEditFavoriteThing")
	@ResponseBody
	public FavoriteThingResponseObject editFavoriteThing(FavoriteThing favoriteThing) {
		try {
			 favoriteThing=favoriteThingServiceImpl.editFavoriteThing(favoriteThing);
			 return new FavoriteThingResponseObject(favoriteThing,true,"Favorite Thing Edited Sucessfully");
		} catch (IdNotFoundException e) {
			return new FavoriteThingResponseObject(false,"Unable To Find ID");
		}catch (Exception e) {
			return new FavoriteThingResponseObject(false,"Something Went Wrong");
		}
	}

}
