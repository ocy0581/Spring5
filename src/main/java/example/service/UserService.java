package example.service;

import example.domain.UserVo;
import example.repository.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserService implements UserMapper {

    @Autowired
    private UserMapper userMapper;
//
//
//    @Override
//    public ArrayList<UserVo> selectUser()
//    {
//        try{
//            return userMapper.selectUser();
//        }
//        catch (Exception e)
//        {
//            System.out.println("UserService > selectUser > Exception e"+e.getMessage());
//            return null;
//        }
//    }

//    @Override
    public ArrayList<UserVo> selectUser() {

        try{
            return userMapper.selectUser();
        }
        catch (Exception e)
        {
            System.out.println("UserService > selectUser > Exception e"+e.getMessage());
            return null;
        }
    }
}
