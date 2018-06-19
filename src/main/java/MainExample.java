import com.example.dao.UserDao;
import com.example.model.User;

public class MainExample {

	public static void main(String[] args) {
		User u=new User("sara","asadi");
		UserDao uDao=new UserDao();
		uDao.createUser(u);

	}

}
