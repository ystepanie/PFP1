package org.pfp.dto;

public class CardVO {
   String cardNum;
   String userId;
   String cardPass;
   String period;
   int division;
   String birth;
   String checkMail;
   String cardOp;
   String name;
   int cvs;
   public int getCvs() {
	return cvs;
}
public void setCvs(int cvs) {
	this.cvs = cvs;
}
public String getName() {
	   return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardNum() {
      return cardNum;
   }
   public void setCardNum(String cardNum) {
      this.cardNum = cardNum;
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public String getCardPass() {
      return cardPass;
   }
   public void setCardPass(String cardPass) {
      this.cardPass = cardPass;
   }
   public String getPeriod() {
      return period;
   }
   public void setPeriod(String period) {
      this.period = period;
   }
   public int getDivision() {
      return division;
   }
   public void setDivision(int division) {
      this.division = division;
   }
   public String getBirth() {
      return birth;
   }
   public void setBirth(String birth) {
      this.birth = birth;
   }
   public String getCheckMail() {
      return checkMail;
   }
   public void setCheckMail(String checkMail) {
      this.checkMail = checkMail;
   }
   public String getCardOp() {
      return cardOp;
   }
   public void setCardOp(String cardOp) {
      this.cardOp = cardOp;
   }
}