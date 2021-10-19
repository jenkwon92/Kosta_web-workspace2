package org.kosta.webstudy23.model;

public class ProductVO {
	private int id;
	private String name;
	private String maker;
	private int price;
	private String regDate;

	public ProductVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductVO(String name, String maker, int price) {
		super();
		this.name = name;
		this.maker = maker;
		this.price = price;
	}

	public ProductVO(String name, String maker, String regDate) {
		super();
		this.name = name;
		this.maker = maker;
		this.regDate = regDate;
	}

	public ProductVO(int id, String name, String maker, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.maker = maker;
		this.regDate = regDate;
	}

	public ProductVO(int id, String name, String maker, int price, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.regDate = regDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "ProductVO [id=" + id + ", name=" + name + ", maker=" + maker + ", price=" + price + ", regDate="
				+ regDate + "]";
	}

}
