package myBean;

import java.util.Date;

public class Year_test {

	public static void main(String[] args) {
		// �⵵ ���ϱ� 
		Date date = new Date();
		System.out.println(date.getYear()); // 121
		System.out.println(date.toLocaleString());
		// 2021. 7. 14. ���� 9:41:19
		// substring(�ε���,��ȯ���ڼ�)
		System.out.println(date.toLocaleString().substring(0,4)); // 2021
		// ����ȯ 
		int year = Integer.parseInt(date.toLocaleString().substring(0,4));
		// return 2021-this.birthYear;

	}

}
