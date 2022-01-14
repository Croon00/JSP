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
		// Vector<�ڷ���> �������� = new Vector<�ڷ���>();
		// �ڷ����� Integer, String ... Ŭ������ 
		
		Vector<Integer> v1 = new Vector();
		
		System.out.println(v1); //[]
		
		//������ �߰�
		// add(��), add(�ε���, ��)
		v1.add(100);
		v1.add(300);
		System.out.println(v1); 
		v1.add(0, 500);
		System.out.println(v1); 
		System.out.println(v1.size());

		Vector<String> v2 = new Vector<String>();
		v2.add("ȫ�浿");
		v2.add("�ӿ�ȯ");
		v2.add("ȫ��ȣ");
		v2.add(1, "������");
		System.out.println(v2); // [ȫ�浿, �̸���, ������]
		
		// �� ��ü = set�޼��� ���
		v2.set(0, "��浿");
		System.out.println(v2);
		
		// Ư���ε����� �� get(index)
		System.out.println(v2.get(1));
		System.out.println(v2.get(v2.size()-1));
		// �ε����� �� ������ �� ���ϱ�
		
		// ���� remove(index), clear() �� ����
		v2.remove(0);
		System.out.println(v2);
		v2.clear();
		System.out.println(v2);
		
		// �������� ���� �ʱⰪ���� ���Ϳ� ����
		// Vector<Integer> v3 = new Vector<>(10); �뷮
		 Vector<Integer> v3 = new Vector<>(Arrays.asList(100, 200, 300, 400, 500));
		 System.out.println(v3); // [100, 200, 300, 400, 500]
		 // �������� �ִ� ���� ���� ���� DB���� �����ܼ� �־��ִ� ��찡 ����.
		 System.out.println(v3.get(2));
		 
		 // for ���� �̿��� ���
		 for(int i = 0; i < v3.size(); i++) {
			 System.out.println(v3.get(i));
		 }
		 
		 // for loop�� �̿��� ���
		 // for (�ڷ��� item���� : ���͸�) { item ���� }
		 System.out.println("===============");
		 for (Integer item : v3) {
			 System.out.println(item); // ���������� ������ ���Ұ��� �Ҵ�
		 }
		 
		 // Ư�� Ŭ������ ���ҷ� �����ϴ� ���� ����
		 // // Vector<Ŭ������> �������� = new Vector<Ŭ������>(); ���̺� ��Ÿ�Ϸ� ������ ��
		 Vector <Student> students =new Vector<Student>();
		 System.out.println(students);
		 students.add(new Student("��ö��", 1, "����"));
		 students.add(new Student("�ڼ���", 2, "����"));
		 students.add(new Student("������", 4, "����"));
		 System.out.println(students);
		 
		 // Ư�� �������� �� ��� get���� �ϸ� �ּҹ����� ����
		 System.out.println(students.get(0));
		 //
		 System.out.println(students.get(0).stName);
		 System.out.println(students.get(0).grade);
		 System.out.println(students.get(0).gender);
		 
		 // ��ü ���ڵ� ���ó�� for ���� �̿��� ���
		 for (int i = 0; i < students.size(); i++) {
			 System.out.println("=============");
			 System.out.println("�л��� : " + students.get(i).stName);
			 System.out.println("�г� : " + students.get(i).grade);
			 System.out.println("���� : " + students.get(i).gender);
		 }
		
		 // for loop ��ü������ ���� �ϳ��� �޾Ƽ� �����ִ� ���
		 for (Student s : students) {
			 System.out.println("\n=================================");
			  System.out.println(" �л� �� : " +s.stName);
			  System.out.println(" �г� : " +s.grade);
			  System.out.println(" ���� : " +s.gender);
			 
		}
		 // �� ��ü
		 students.get(0).grade=4;
		 System.out.println(students.get(0).stName);
		 System.out.println(students.get(0).grade);
		 System.out.println(students.get(0).gender);
		 
		 // ����
		 System.out.println(students.size());// 3��
		 students.remove(1);
		 for (Student s : students) {
			 System.out.println("\n=================================");
			  System.out.println(" �л� �� : " +s.stName);
			  System.out.println(" �г� : " +s.grade);
			  System.out.println(" ���� : " +s.gender);
			 
		
	}

	
}
}
