package myPkg;

public class Ex02_PersonBean {
	private String name;
	private String age;
	private String address;
	private String tel;
	
	public Ex02_PersonBean() {
		super();
	}
	
	public Ex02_PersonBean(String name, String age, String address, String tel) {
		super();
		this.name = name;
		this.age = age;
		this.address = address;
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
}
