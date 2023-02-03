package frontWeb;

public class MapVO {
	private String bigmap;
	private String midmap;
	private String smallmap;
	public MapVO() {
	}
	public MapVO(String bigmap, String midmap, String smallmap) {
		this.bigmap = bigmap;
		this.midmap = midmap;
		this.smallmap = smallmap;
	}
	public MapVO(String bigmap, String midmap) {
		this.bigmap = bigmap;
		this.midmap = midmap;
	}
	public MapVO(String bigmap) {
		this.bigmap = bigmap;
	}
	public String getBigmap() {
		return bigmap;
	}
	public void setBigmap(String bigmap) {
		this.bigmap = bigmap;
	}
	public String getMidmap() {
		return midmap;
	}
	public void setMidmap(String midmap) {
		this.midmap = midmap;
	}
	public String getSmallmap() {
		return smallmap;
	}
	public void setSmallmap(String smallmap) {
		this.smallmap = smallmap;
	}
	
	
}
