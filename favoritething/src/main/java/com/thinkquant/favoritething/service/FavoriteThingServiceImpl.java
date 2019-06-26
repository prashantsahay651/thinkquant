package com.thinkquant.favoritething.service;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thinkquant.favoritething.bean.FavoriteThing;
import com.thinkquant.favoritething.dao.FavoriteThingDAOImpl;
import com.thinkquant.favoritething.exception.IdNotFoundException;

@Service
public class FavoriteThingServiceImpl {

	@Autowired
	private FavoriteThingDAOImpl favoriteThingDAOImpl;

	private Calendar calendar;

	private Date modifiedDate;

	private FavoriteThing favoriteThing1;

	public FavoriteThing addFavoriteThing(FavoriteThing favoriteThing) {
		return favoriteThingDAOImpl.save(favoriteThing);
	}

	public FavoriteThing editFavoriteThing(FavoriteThing favoriteThing) throws IdNotFoundException {

		favoriteThing1 = favoriteThingDAOImpl.findById(favoriteThing.getFavoriteThingId()).orElse(null);
		if (favoriteThing1 == null) {
			throw new IdNotFoundException();
		}
		calendar = Calendar.getInstance();
		modifiedDate = new Date(calendar.getTime().getTime());
		favoriteThing1.setTitle(favoriteThing.getTitle());
		favoriteThing1.setDescription(favoriteThing.getDescription());
		favoriteThing1.setRanking(favoriteThing.getRanking());
		favoriteThing1.setMetadata(favoriteThing.getMetadata());
		favoriteThing1.setCategory(favoriteThing.getCategory());
		favoriteThing1.setModifiedDate(modifiedDate);
		return favoriteThingDAOImpl.save(favoriteThing);
	}

	public List<FavoriteThing> getAllFavoriteThing() {
		return favoriteThingDAOImpl.findAll();
	}

	public FavoriteThing getFavoriteThingById(int favoriteThingId) {
		return favoriteThingDAOImpl.getOne(favoriteThingId);
	}

}
