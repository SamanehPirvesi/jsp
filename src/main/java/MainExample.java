import com.example.dao.ContactDao;
import com.example.dao.UserDao;
import com.example.model.Contact;
import com.example.model.User;

public class MainExample {

	public static void main(String[] args) {
		User u=new User("sara","asadi");
		User u1=new User("samane","1234");
		UserDao uDao=new UserDao();
		Contact c=new Contact("marco","345677");
		Contact c1=new Contact("simona","658579");
//		
		ContactDao cdao=new ContactDao();
//		
//		c.setUser(u);
//		c1.setUser(u);
//		u.addContact(c);
//		u.addContact(c1);
		uDao.createUser(u1);
//		cdao.createContact(c);
//		cdao.createContact(c1);
	}

}
