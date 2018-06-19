
package com.mkdika.rexumee.controller;

import com.mkdika.rexumee.model.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 *
 * @author Maikel Chandika (mkdika@gmail.com)
 */
@Controller
@RequestMapping({"", "/", "index"})
public class IndexController {
    
    @Autowired
    private Resume resume;
    
    @RequestMapping(method = GET)
    public String getIndex(Model model) {              
        model.addAttribute("resume", resume);        
        return "index";
    } 
}
