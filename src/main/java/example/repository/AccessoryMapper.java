package example.repository;

import example.domain.AccessoryVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface AccessoryMapper {
    @Select("select  idaccessory as id,accessory_id,price from accessory")
    ArrayList<AccessoryVo> selectAccessoryAll();


    @Select("select  idaccessory as id,accessory_id,category,color,gold,price,count from accessory where idaccessory = #{id}")
    AccessoryVo selectAccessory(@Param("id")int id);
}
