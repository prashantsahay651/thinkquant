package com.thinkquant.favoritething.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thinkquant.favoritething.bean.FavoriteThing;

public interface FavoriteThingDAOImpl extends JpaRepository<FavoriteThing,Integer> {

}
