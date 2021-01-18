package example.service;

import example.domain.AccessoryVo;
import example.repository.AccessoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class AccessoryService implements AccessoryMapper {

    @Autowired
    private AccessoryMapper accessoryMapper;

    public ArrayList<AccessoryVo> selectAccessoryAll() {
        try {
            return accessoryMapper.selectAccessoryAll();
        }
        catch (Exception e)
        {
            System.out.println("AccessoryService > selectAccessoryAll > Exception e"+e.getMessage());
            return null;
        }
    }

    public AccessoryVo selectAccessory(int id) {
        try {
            return accessoryMapper.selectAccessory(id);
        }
        catch (Exception e)
        {
            System.out.println("AccessoryService > selectAccessory > Exception e"+e.getMessage());
            return null;
        }
    }
}
