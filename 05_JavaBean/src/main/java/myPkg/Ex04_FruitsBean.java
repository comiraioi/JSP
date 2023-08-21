package myPkg;

public class Ex04_FruitsBean {
	private String name;
	private String password;
	private String[] fruit;
	
	public Ex04_FruitsBean() {
		super();
	}

	public Ex04_FruitsBean(String name, String password, String[] fruit) {
		super();
		this.name = name;
		this.password = password;
		this.fruit = fruit;
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
	
	public String[] getFruit() {
		return fruit;	//배열 주소
	}

	public void setFruit(String[] fruit) {
		//String[] fruit = {"딸기","사과","포도"};
		this.fruit = fruit;
	}
	
}
