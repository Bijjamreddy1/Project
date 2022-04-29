package com.example.demo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


 
@Controller
public class AppController {


//
// @GetMapping("/")
// public String main() {
//return "Static";
// }
//    public String viewemp(Model m){    
//        List<Employee> list=dao.getEmployees();    
//        m.addAttribute("list",list);  
  // return "demo";    
 //}  

 @GetMapping("/index")
      public String index()
       {
        
         return "venkat";
       }
}