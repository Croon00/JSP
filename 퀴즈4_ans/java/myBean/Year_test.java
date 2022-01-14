package myBean;

import java.util.Date;

public class Year_test {

	public static void main(String[] args) {
		// 년도 구하기 
		Date date = new Date();
		System.out.println(date.getYear()); // 121
		System.out.println(date.toLocaleString());
		// 2021. 7. 14. 오전 9:41:19
		// substring(인덱스,반환글자수)
		System.out.println(date.toLocaleString().substring(0,4)); // 2021
		// 형변환 
		int year = Integer.parseInt(date.toLocaleString().substring(0,4));
		// return 2021-this.birthYear;

	}

}
