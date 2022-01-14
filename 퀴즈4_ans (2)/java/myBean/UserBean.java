package myBean;

import java.util.Date;

public class UserBean {

	// ���ʵ带 �̿��ؼ� ���� ���޵Ǵ� �������
	private String userName;
	private int birthYear;
	private String gender;
	private String address;
	
	// birthYear ��������� 
	// Date ��ü�� �̿��ؼ� ���س⵵�� �̿��ؼ� �� ���� 
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
	
	// ���̸� ���� �� �ִ� �޼��� ���� 
	public int getAge() {
		// ���� �⵵ ���ϱ� 
		Date date = new Date();
		int year = Integer.parseInt(date.toLocaleString().substring(0,4));
		// return 2021-this.birthYear+1;
		return year-this.birthYear+1;
	}
	
}





