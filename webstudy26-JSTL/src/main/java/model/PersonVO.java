package model;

public class PersonVO {
	private String name;
	private int age;
	private CarVO carVO; // has a relationship (aggregation)

	public PersonVO() {
		super();
	}

	public PersonVO(String name, int age, CarVO carVO) {
		super();
		this.name = name;
		this.age = age;
		this.carVO = carVO;
	}

	public PersonVO(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public CarVO getCarVO() {
		return carVO;
	}

	public void setCarVO(CarVO carVO) {
		this.carVO = carVO;
	}

}
