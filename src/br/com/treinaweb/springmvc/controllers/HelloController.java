package br.com.treinaweb.springmvc.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloController {

	@RequestMapping("/message")
	public String message() {
		return "hello";
	}

	@RequestMapping("/messagemDoServidor")
	public String messagemDoServidor(Model model) {
		model.addAttribute("mensagem", new Date().toString());
		return "messagemDoServidor";
	}

	@RequestMapping("/messagemDoServidor2")
	public ModelAndView mensagemDoServidorV2() {
		return new ModelAndView("messagemDoServidor", "mensagem", "Felipe Romao &copy; 2017");
	}

	@RequestMapping("/receberMensagem/{mensagem}")
	public String receberMensagem(Model model, @PathVariable("mensagem") String msg) {
		model.addAttribute("mensagem", msg);
		return "messagemDoServidor";
	}

	@RequestMapping("/receberMensagem2")
	public String receberMensagem2(Model model, @RequestParam(value = "mensagem", required = false, defaultValue = "Mensagem Padrão =D") String msg) {
		model.addAttribute("mensagem", msg);
		return "messagemDoServidor";
	}
}
