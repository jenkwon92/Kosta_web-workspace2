package model;

public class CarVO {
	private String carNo;
	private String model;
	private int price;
	
	public CarVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CarVO(String carNo, String model, int price) {
		super();
		this.carNo = carNo;
		this.model = model;
		this.price = price;
	}
	
	public String getCarNo() {
		return carNo;
	}
	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
}
