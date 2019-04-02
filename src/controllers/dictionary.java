package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class dictionary {
    @GetMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/search")
    public String search(@RequestParam String word, Model model) {
        Map<String, String> dic = new HashMap<>();
        dic.put("hello", "xin chao");
        dic.put("how", "the nao");
        dic.put("book", "quyen sach");
        dic.put("computer", "may tinh");

        String result = dic.get(word);
        if(result != null) {
            model.addAttribute("result", result);
        } else {
            model.addAttribute("result", "Not found!");
        }

        return "index";
    }
}
