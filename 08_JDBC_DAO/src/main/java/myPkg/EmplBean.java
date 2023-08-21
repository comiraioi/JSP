package myPkg;

public class EmplBean {
	private int num;
	private String name;
	private int deptno;
	private int salary;
	
	public EmplBean() {
		super();
	}

	public EmplBean(int num, String name, int deptno, int salary) {
		super();
		this.num = num;
		this.name = name;
		this.deptno = deptno;
		this.salary = salary;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}
	
}
