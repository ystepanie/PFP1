package org.pfp.dto;

public class DealVO {
	
	int dealCode;
	String note;
	int dealStatus;
	String dealDate;
	int buyPrice;
	int salesPrice;
	int size;
	int cntDeal;
	int avgDeal;
	String buyDate;
	String saleDate;

	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(String saleDate) {
		this.saleDate = saleDate;
	}
	public int getSalesPrice() {
		return salesPrice;
	}
	public void setSalesPrice(int salesPrice) {
		this.salesPrice = salesPrice;
	}
	public int getDealCode() {
		return dealCode;
	}
	public void setDealCode(int dealCode) {
		this.dealCode = dealCode;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getDealStatus() {
		return dealStatus;
	}
	public void setDealStatus(int dealStatus) {
		this.dealStatus = dealStatus;
	}
	public String getDealDate() {
		return dealDate;
	}
	public void setDealDate(String dealDate) {
		this.dealDate = dealDate;
	}
	public int getBuyPrice() {
		return buyPrice;
	}
	public void setBuyPrice(int buyPrice) {
		this.buyPrice = buyPrice;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getCntDeal() {
		return cntDeal;
	}
	public void setCntDeal(int cntDeal) {
		this.cntDeal = cntDeal;
	}
	public int getAvgDeal() {
		return avgDeal;
	}
	public void setAvgDeal(int avgDeal) {
		this.avgDeal = avgDeal;
	}
}
