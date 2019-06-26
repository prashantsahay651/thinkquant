package com.thinkquant.favoritething.responseobject;

import com.thinkquant.favoritething.bean.FavoriteThing;

public class FavoriteThingResponseObject {
	
	private FavoriteThing favoriteThing;
	private boolean status;
	private String message;
	
	public FavoriteThingResponseObject(boolean status, String message) {
		super();
		this.status = status;
		this.message = message;
	}
	public FavoriteThingResponseObject(FavoriteThing favoriteThing, boolean status, String message) {
		super();
		this.favoriteThing = favoriteThing;
		this.status = status;
		this.message = message;
	}
	public FavoriteThing getFavoriteThing() {
		return favoriteThing;
	}
	public void setFavoriteThing(FavoriteThing favoriteThing) {
		this.favoriteThing = favoriteThing;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
