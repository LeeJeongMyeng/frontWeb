package frontWeb;


public class MarketMemverVO {

	private String userno;
	private String id;
	private String password;
	private String username;
	private String email;
	private String phonenumber;
	private String address;
	private String gender;
	private String rrn_yyyy;
	private String rrn_mm;
	private String rrn_dd;
	private int point;
	public MarketMemverVO() {
	}
	
	
	
	public MarketMemverVO(String userno, String id, String password, String username, String email, String phonenumber,
			String address, String gender, String rrn_yyyy, String rrn_mm, String rrn_dd, int point) {
		this.userno = userno;
		this.id = id;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phonenumber = phonenumber;
		this.address = address;
		this.gender = gender;
		this.rrn_yyyy = rrn_yyyy;
		this.rrn_mm = rrn_mm;
		this.rrn_dd = rrn_dd;
		this.point = point;
	}



	public MarketMemverVO(String id, String password, String username, String email, String phonenumber, String address,
			String gender, String rrn_yyyy, String rrn_mm, String rrn_dd, int point) {
		this.id = id;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phonenumber = phonenumber;
		this.address = address;
		this.gender = gender;
		this.rrn_yyyy = rrn_yyyy;
		this.rrn_mm = rrn_mm;
		this.rrn_dd = rrn_dd;
		this.point = point;
	}



	public MarketMemverVO(String id, String password, String username, String email, String phonenumber, String address,
			String gender, String rrn_yyyy, String rrn_mm, String rrn_dd) {
		this.id = id;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phonenumber = phonenumber;
		this.address = address;
		this.gender = gender;
		this.rrn_yyyy = rrn_yyyy;
		this.rrn_mm = rrn_mm;
		this.rrn_dd = rrn_dd;
	}
	
	public String getUserno() {
		return userno;
	}
	public void setUserno(String userno) {
		this.userno = userno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRrn_yyyy() {
		return rrn_yyyy;
	}
	public void setRrn_yyyy(String rrn_yyyy) {
		this.rrn_yyyy = rrn_yyyy;
	}
	public String getRrn_mm() {
		return rrn_mm;
	}
	public void setRrn_mm(String rrn_mm) {
		this.rrn_mm = rrn_mm;
	}
	public String getRrn_dd() {
		return rrn_dd;
	}
	public void setRrn_dd(String rrn_dd) {
		this.rrn_dd = rrn_dd;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
