package org.pfp.dto;

public class LikeVO {
	private int likeCode;
	private String userId;
	private int boardCode;
	private int likeCheck;
	public int getLikeCode() {
		return likeCode;
	}
	public void setLikeCode(int likeCode) {
		this.likeCode = likeCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}
	public int getLikeCheck() {
		return likeCheck;
	}
	public void setLikeCheck(int likeCheck) {
		this.likeCheck = likeCheck;
	}

}
