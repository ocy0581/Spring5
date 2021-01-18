package example.repository;

import example.domain.UserVo;
import example.service.UserService;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface UserMapper {

    @Select("select * from user")
    public ArrayList<UserVo> selectUser();


}
