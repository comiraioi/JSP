package myPkg;

public class Ex01_SimpleBean {	//Bean=DTO=VO
	
	private String msg;

	public Ex01_SimpleBean() {
		super();
	}
	
	public Ex01_SimpleBean(String msg) {
		super();
		this.msg = msg;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
