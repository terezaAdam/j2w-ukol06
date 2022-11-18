package cz.czechitas.java2webapps.ukol6.controllers;

import cz.czechitas.java2webapps.ukol6.repository.Vizitka_repository;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Controller_vizitka {
    private final Vizitka_repository vizitka_repository;
    public Controller_vizitka(Vizitka_repository vizitka_repository) {
        this.vizitka_repository = vizitka_repository;
    }
    @InitBinder
    public void nullStringBinding(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }

    @GetMapping("/")
    public Object seznam (){
        return  new ModelAndView("seznam").addObject("vizitky",vizitka_repository.findAll());

    }


}
