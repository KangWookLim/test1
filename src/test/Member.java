package test;

public class Member {
	
	private String name;
	private String id;
	private String pw;
	private int point;
	
	public Member(String name, String id, String pw, int point) {
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.point = point;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}

}
