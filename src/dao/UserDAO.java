package dao;


import po.User;

/**
 * Created by kaixin on 2018/8/15.
 */
public class UserDAO {
    //用户登录方法
    public boolean usersLogin(User u)
    {
        if("admin".equals(u.getUsername())&&"123456".equals(u.getPassword()))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
