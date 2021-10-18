package test.reflection;
class ReflectionService{
	public void create(String command) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		//현재 패키지명을 동적으로 반환받는다 
		String packageInfo=this.getClass().getPackage().getName();
		System.out.println(packageInfo+"."+command);
		Player p=(Player)Class.forName(packageInfo+"."+command).newInstance();
		p.play();
	}
}
public class TestAutoCreateInstance2 {
	public static void main(String[] args) {
		String command="CDPlayer";
		command="Youtube";
		ReflectionService service=new ReflectionService();
		try {
			service.create(command);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
