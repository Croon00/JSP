package myBean;

import java.util.Date;

public class UserBean {

	// 폼필드를 이용해서 값이 전달되는 멤버변수
	private String userName;
	private int birthYear;
	private String gender;
	private String address;
	
	// birthYear 멤버변수와 
	// Date 객체를 이용해서 올해년도를 이용해서 값 지정 
	private int age;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(int birthYear) {
		this.birthYear = birthYear;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	// 나이를 얻을 수 있는 메서드 선언 
	public int getAge() {
		// 올해 년도 구하기 
		Date date = new Date();
		int year = Integer.parseInt(date.toLocaleString().substring(0,4));
		// return 2021-this.birthYear+1;
		return year-this.birthYear+1;
	}
	
}





