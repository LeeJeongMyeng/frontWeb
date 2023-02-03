package frontWeb;

public class CartVO {
private String id;
private String imgname;
private String brand;
private String prodname;
private int cnt;
private Double price;
private Double discount;
public CartVO() {
}

public CartVO(String id) {
	this.id = id;
}

public CartVO(String id, String imgname, String brand, String prodname, int cnt, Double price, Double discount) {
	this.id = id;
	this.imgname = imgname;
	this.brand = brand;
	this.prodname = prodname;
	this.cnt = cnt;
	this.price = price;
	this.discount = discount;
}
public CartVO(String id,int cnt, String prodname) {
	this.id = id;
	this.prodname = prodname;
	this.cnt = cnt;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getImgname() {
	return imgname;
}
public void setImgname(String imgname) {
	this.imgname = imgname;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public String getProdname() {
	return prodname;
}
public void setProdname(String prodname) {
	this.prodname = prodname;
}
public int getCnt() {
	return cnt;
}
public void setCnt(int cnt) {
	this.cnt = cnt;
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




}
