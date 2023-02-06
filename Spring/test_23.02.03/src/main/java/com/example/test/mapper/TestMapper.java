package com.example.test.mapper;

import com.example.test.vo.TestVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TestMapper {
    int insert(TestVO test);
    int insertCheck(int no, String name);
    int idChecker(String id);
    int loginChecker(@Param("id") String id, @Param("pw") String pw);
}
