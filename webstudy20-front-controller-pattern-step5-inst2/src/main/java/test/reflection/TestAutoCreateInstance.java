package test.reflection;
interface Player{
	public void play();
}
class CDPlayer implements Player{
	@Override
	public void play() {
		System.out.println("cd를 재생하다");
	}	
}
class Youtube implements Player{
	@Override
	public void play() {
		System.out.println("동영상을 재생하다");
	}	
}
public class TestAutoCreateInstance {
	public static void main(String[] args) {
		String info="test.reflection.CDPlayer";
		String info2="test.reflection.Youtube";
		try {
			//System.out.println(Class.forName(info).newInstance());
			//System.out.println(Class.forName(info2).newInstance());
			Player p1=(Player)Class.forName(info).newInstance();
			p1.play();
			Player p2=(Player)Class.forName(info2).newInstance();
			p2.play();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}
}





