package frontWeb;

import java.sql.Date;

//isbn,imgname,prodname,brand,div,price, discount,information,registdate
//imgname,brand,prodname,price,discount,information 웹페이지에 보여줄 내용
public class MarketVO {
private int num;
private String isbn;
private String imgname;
private String prodname;
private String brand;
private String div;
private Double price;
private Double discount;
private String information;
private Date registdate;
private int count;
public MarketVO() {
}



public MarketVO(int count) {
	this.count = count;
}



public MarketVO(String prodname) {
	this.prodname = prodname;
}



public MarketVO(int num, String isbn, String imgname, String prodname, String brand, String div, Double price,
		Double discount, String information, Date registdate) {
	this.num = num;
	this.isbn = isbn;
	this.imgname = imgname;
	this.prodname = prodname;
	this.brand = brand;
	this.div = div;
	this.price = price;
	this.discount = discount;
	this.information = information;
	this.registdate = registdate;
}



public MarketVO(int num, String isbn, String imgname, String prodname, String brand, Double price, Double discount,
		String information) {
	this.num = num;
	this.isbn = isbn;
	this.imgname = imgname;
	this.prodname = prodname;
	this.brand = brand;
	this.price = price;
	this.discount = discount;
	this.information = information;
}



public MarketVO(String imgname, String brand,  String prodname, Double price, Double discount, String information) {
	this.imgname = imgname;
	this.prodname = prodname;
	this.brand = brand;
	this.price = price;
	this.discount = discount;
	this.information = information;
}



public MarketVO(String isbn, String imgname, String prodname, String brand, String div, Double price, Double discount,
		String information, Date registdate) {
	this.isbn = isbn;
	this.imgname = imgname;
	this.prodname = prodname;
	this.brand = brand;
	this.div = div;
	this.price = price;
	this.discount = discount;
	this.information = information;
	this.registdate = registdate;
}
public MarketVO(String isbn, String imgname, String prodname, String brand, String div, Double price, Double discount,
		String information) {
	this.isbn = isbn;
	this.imgname = imgname;
	this.prodname = prodname;
	this.brand = brand;
	this.div = div;
	this.price = price;
	this.discount = discount;
	this.information = information;
}
public MarketVO(String imgname, String prodname, String brand, String div, Double price, Double discount,
		String information, Date registdate) {
	this.imgname = imgname;
	this.prodname = prodname;
	this.brand = brand;
	this.div = div;
	this.price = price;
	this.discount = discount;
	this.information = information;
	this.registdate = registdate;
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
public String getProdname() {
	return prodname;
}
public void setProdname(String prodname) {
	this.prodname = prodname;
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
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}



public int getNum() {
	return num;
}



public void setNum(int num) {
	this.num = num;
}

}


