package org.pfp.dto;

import java.util.ArrayList;

public class GoodsVO {
	
	int modelNum;
	String itemGroup;
	String itemName;
	String thumbnail;
	String itemContent;
	int releasePrice;
	int recommand;
	String releaseDate;
	int saleBid;
	int buyBid;
	int size;
	ArrayList<String> arrItemGroup;
	public ArrayList<String> getArrItemGroup() {
		return arrItemGroup;
	}
	public void setArrItemGroup(ArrayList<String> arrItemGroup) {
		this.arrItemGroup = arrItemGroup;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getBuyBid() {
		return buyBid;
	}
	public void setBuyBid(int buyBid) {
		this.buyBid = buyBid;
	}
	public int getSaleBid() {
		return saleBid;
	}
	public void setSaleBid(int saleBid) {
		this.saleBid = saleBid;
	}
	public int getModelNum() {
		return modelNum;
	}
	public void setModelNum(int modelNum) {
		this.modelNum = modelNum;
	}
	public String getItemGroup() {
		return itemGroup;
	}
	public void setItemGroup(String itemGroup) {
		this.itemGroup = itemGroup;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getItemContent() {
		return itemContent;
	}
	public void setItemContent(String itemContent) {
		this.itemContent = itemContent;
	}
	public int getReleasePrice() {
		return releasePrice;
	}
	public void setReleasePrice(int releasePrice) {
		this.releasePrice = releasePrice;
	}
	public int getRecommand() {
		return recommand;
	}
	public void setRecommand(int recommand) {
		this.recommand = recommand;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
}
