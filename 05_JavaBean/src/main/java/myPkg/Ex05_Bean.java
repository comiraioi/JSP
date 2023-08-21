package myPkg;

public class Ex05_Bean {
	private String name;
	private String password;
	private int[] score;
	private String[] group;
	
	public Ex05_Bean() {
		super();
	}

	public Ex05_Bean(String name, String password, int[] score, String[] group) {
		super();
		this.name = name;
		this.password = password;
		this.score = score;
		this.group = group;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int[] getScore() {
		return score;
	}

	public void setScore(int[] score) {
		this.score = score;
	}

	public String[] getGroup() {
		return group;
	}

	public void setGroup(String[] group) {
		this.group = group;
	}

}
