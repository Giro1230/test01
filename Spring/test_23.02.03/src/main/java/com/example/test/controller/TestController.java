package com.example.test.controller;

import com.example.test.mapper.TestMapper;
import com.example.test.vo.TestVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
    @Autowired
    TestMapper mapper;

    @GetMapping("/")
    public String test(){
        return "index";
    }

    @GetMapping("checkForm")
    public void checkForm(){}

    @PostMapping("insertCheck.do")
    public String insertCheck(int no, String name, Model model){
        int result = -1;

        TestVO member = new TestVO();
        member.setNo(no);
        member.setName(name);

        model.addAttribute("member", member);

        result = mapper.insertCheck(no, name);

        if (result != 0) return "regForm";
        else return "checkForm";
    }

    @PostMapping("idCheck.do")
    public void idCheck(String id, Model model){
        System.out.println(id);
        int result = mapper.idChecker(id);
        System.out.println(result);
        model.addAttribute("result", result);
    }
}
