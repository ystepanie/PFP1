package org.pfp.dto;

public class GoodsVO {
	
	int modelNum;
	int itemGroup;
	String itemName;
	String thumbnail;
	String itemContent;
	int releasePrice;
	int recommand;
	String releaseDate;
	int bidPrice;
	public int getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(int bidPrice) {
		this.bidPrice = bidPrice;
	}
	public int getModelNum() {
		return modelNum;
	}
	public void setModelNum(int modelNum) {
		this.modelNum = modelNum;
	}
	public int getItemGroup() {
		return itemGroup;
	}
	public void setItemGroup(int itemGroup) {
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
