package com.example.test;

import com.example.test.mapper.TestMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
public class MemberTest {
    @Autowired
    TestMapper mapper;

    @Test
    public void check(){
        int no = 1;
        String name = "권지우";
        int result = mapper.insertCheck(no, name);
        System.out.println(result);
    }
}
