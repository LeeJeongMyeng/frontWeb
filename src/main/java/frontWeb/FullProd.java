package frontWeb;

import java.sql.Date;

//pinfonum,prodname,ship0,ship,packagingtype,packagingbundle,volume,
//allergy,warring,isbn,imgname,prodname,brand,div,price,discount,information,registdate
public class FullProd {
private String pinfonum;
private String prodname;
private String ship0;
private String ship;
private String packagingtype;
private String packagingbundle;
private String volume;
private String allergy;
private String warring;
private String isbn;
private String imgname;
private String prodname2;
private String brand;
private String div;
private Double price;
private Double discount; 
private String information;
private Date registdate;
public FullProd() {
}


public FullProd(String prodname) {
	this.prodname = prodname;
}


public FullProd(String pinfonum, String prodname, String ship0, String ship, String packagingtype,
		String packagingbundle, String volume, String allergy, String warring, String isbn, String imgname,
		String prodname2, String brand, String div, Double price, Double discount, String information,
		Date registdate) {
	this.pinfonum = pinfonum;
	this.prodname = prodname;
	this.ship0 = ship0;
	this.ship = ship;
	this.packagingtype = packagingtype;
	this.packagingbundle = packagingbundle;
	this.volume = volume;
	this.allergy = allergy;
	this.warring = warring;
	this.isbn = isbn;
	this.imgname = imgname;
	this.prodname2 = prodname2;
	this.brand = brand;
	this.div = div;
	this.price = price;
	this.discount = discount;
	this.information = information;
	this.registdate = registdate;
}
public String getPinfonum() {
	return pinfonum;
}
public void setPinfonum(String pinfonum) {
	this.pinfonum = pinfonum;
}
public String getProdname() {
	return prodname;
}
public void setProdname(String prodname) {
	this.prodname = prodname;
}
public String getShip0() {
	return ship0;
}
public void setShip0(String ship0) {
	this.ship0 = ship0;
}
public String getShip() {
	return ship;
}
public void setShip(String ship) {
	this.ship = ship;
}
public String getPackagingtype() {
	return packagingtype;
}
public void setPackagingtype(String packagingtype) {
	this.packagingtype = packagingtype;
}
public String getPackagingbundle() {
	return packagingbundle;
}
public void setPackagingbundle(String packagingbundle) {
	this.packagingbundle = packagingbundle;
}
public String getVolume() {
	return volume;
}
public void setVolume(String volume) {
	this.volume = volume;
}
public String getAllergy() {
	return allergy;
}
public void setAllergy(String allergy) {
	this.allergy = allergy;
}
public String getWarring() {
	return warring;
}
public void setWarring(String warring) {
	this.warring = warring;
}
public String getIsbn() {
	return isbn;
}
public void setIsbn(String isbn) {
	this.isbn = isbn;
}
public String getImgname() {
	return imgname;
}
public void setImgname(String imgname) {
	this.imgname = imgname;
}
public String getProdname2() {
	return prodname2;
}
public void setProdname2(String prodname2) {
	this.prodname2 = prodname2;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public String getDiv() {
	return div;
}
public void setDiv(String div) {
	this.div = div;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public Double getDiscount() {
	return discount;
}
public void setDiscount(Double discount) {
	this.discount = discount;
}
public String getInformation() {
	return information;
}
public void setInformation(String information) {
	this.information = information;
}
public Date getRegistdate() {
	return registdate;
}
public void setRegistdate(Date registdate) {
	this.registdate = registdate;
}




}
