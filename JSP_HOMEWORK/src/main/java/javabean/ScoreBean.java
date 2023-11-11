package javabean;

public class ScoreBean {

	private String name;
	private int point;
	private char grade;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	public char getGrade(int point) {
		if(point>=90) {
			grade ='A';
		}
		else if(point>=80 && point<90) {
			grade ='B';
		}
		else if(point>=70 && point<80) {
			grade ='C';
		}
		else if(point>=60 && point<70) {
			grade ='D';
		}
		else {
			grade ='F';
		}
		
		return grade;
		
	}
	
}
