package tw.views;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewsController {
    
    @RequestMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }
    
    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("member/login/login");
    }
    
    @RequestMapping("/regist")
    public ModelAndView regist() {
        return new ModelAndView("member/regist/regist");
    }
    
    @RequestMapping("/admin/showAllMember")
    public ModelAndView showAllMember() {
        return new ModelAndView("member/showMember/showAll");
    }
    
    @RequestMapping("/users/showMemberInfo")
    public ModelAndView showMemberInfo() {
        return new ModelAndView("member/showMember/showMemberInfo");
    }
    
    @RequestMapping("/admin/chart")
    public ModelAndView showchart() {
        return new ModelAndView("member/chart/memberChart");
    }
    
    @RequestMapping("/users/chatBox")
    public ModelAndView chatBox() {
        return new ModelAndView("member/chatBox/chatBox");
    }
    
    @RequestMapping("/users/memberCenter")
    public ModelAndView memberCenter() {
        return new ModelAndView("member/memberCenter");
    }
    

}
