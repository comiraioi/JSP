package myPkg;

public class Ex06_Bean {
	private String title;
	private String author;
	private String publisher;
	private String price;
	private String date;
	private String kind;
	private String[] bookstore;
	private String count;
	
	public Ex06_Bean() {
		super();
	}

	public Ex06_Bean(String title, String author, String publisher, String price, String date, String kind,
			String[] bookstore, String count) {
		super();
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
		this.date = date;
		this.kind = kind;
		this.bookstore = bookstore;
		this.count = count;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String[] getBookstore() {
		return bookstore;
	}

	public void setBookstore(String[] bookstore) {
		this.bookstore = bookstore;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

}
