package test;

import java.util.Arrays;
import java.util.Vector;

class Student {
	String stName;
	int grade;
	String gender;
	public Student(String stName, int grade, String gender) {
		this.stName = stName;
		this.grade = grade;
		this.gender = gender;
	}
	
	
}

public class Vector_test {


	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Vector<자료형> 참조변수 = new Vector<자료형>();
		// 자료형은 Integer, String ... 클래스명 
		
		Vector<Integer> v1 = new Vector();
		
		System.out.println(v1); //[]
		
		//데이터 추가
		// add(값), add(인덱스, 값)
		v1.add(100);
		v1.add(300);
		System.out.println(v1); 
		v1.add(0, 500);
		System.out.println(v1); 
		System.out.println(v1.size());

		Vector<String> v2 = new Vector<String>();
		v2.add("홍길동");
		v2.add("임요환");
		v2.add("홍진호");
		v2.add(1, "이윤열");
		System.out.println(v2); // [홍길동, 이몽룡, 성춘향]
		
		// 값 교체 = set메서드 사용
		v2.set(0, "고길동");
		System.out.println(v2);
		
		// 특정인덱스의 값 get(index)
		System.out.println(v2.get(1));
		System.out.println(v2.get(v2.size()-1));
		// 인덱스의 맨 마지막 값 구하기
		
		// 삭제 remove(index), clear() 다 삭제
		v2.remove(0);
		System.out.println(v2);
		v2.clear();
		System.out.println(v2);
		
		// 여러개의 값을 초기값으로 벡터에 저장
		// Vector<Integer> v3 = new Vector<>(10); 용량
		 Vector<Integer> v3 = new Vector<>(Arrays.asList(100, 200, 300, 400, 500));
		 System.out.println(v3); // [100, 200, 300, 400, 500]
		 // 수동으로 넣는 경우는 많이 없고 DB에서 끌어당겨서 넣어주는 경우가 많음.
		 System.out.println(v3.get(2));
		 
		 // for 문을 이용한 출력
		 for(int i = 0; i < v3.size(); i++) {
			 System.out.println(v3.get(i));
		 }
		 
		 // for loop를 이용한 출력
		 // for (자료형 item변수 : 벡터명) { item 변수 }
		 System.out.println("===============");
		 for (Integer item : v3) {
			 System.out.println(item); // 순차적으로 벡터의 원소값이 할당
		 }
		 
		 // 특정 클래스를 원소로 지정하는 벡터 선언
		 // // Vector<클래스명> 참조변수 = new Vector<클래스명>(); 테이블 스타일로 들어오게 됨
		 Vector <Student> students =new Vector<Student>();
		 System.out.println(students);
		 students.add(new Student("김철수", 1, "남자"));
		 students.add(new Student("박성준", 2, "남자"));
		 students.add(new Student("윤은혜", 4, "여자"));
		 System.out.println(students);
		 
		 // 특정 아이템의 값 출력 get으로 하면 주소번지만 나옴
		 System.out.println(students.get(0));
		 //
		 System.out.println(students.get(0).stName);
		 System.out.println(students.get(0).grade);
		 System.out.println(students.get(0).gender);
		 
		 // 전체 레코드 출력처럼 for 문을 이용한 출력
		 for (int i = 0; i < students.size(); i++) {
			 System.out.println("=============");
			 System.out.println("학생명 : " + students.get(i).stName);
			 System.out.println("학년 : " + students.get(i).grade);
			 System.out.println("성명 : " + students.get(i).gender);
		 }
		
		 // for loop 객체변수를 통한 하나씩 받아서 보여주는 방법
		 for (Student s : students) {
			 System.out.println("\n=================================");
			  System.out.println(" 학생 명 : " +s.stName);
			  System.out.println(" 학년 : " +s.grade);
			  System.out.println(" 성별 : " +s.gender);
			 
		}
		 // 값 교체
		 students.get(0).grade=4;
		 System.out.println(students.get(0).stName);
		 System.out.println(students.get(0).grade);
		 System.out.println(students.get(0).gender);
		 
		 // 삭제
		 System.out.println(students.size());// 3개
		 students.remove(1);
		 for (Student s : students) {
			 System.out.println("\n=================================");
			  System.out.println(" 학생 명 : " +s.stName);
			  System.out.println(" 학년 : " +s.grade);
			  System.out.println(" 성별 : " +s.gender);
			 
		
	}

	
}
}
