package top.putop.mi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 程序初始入口
 * 
 * @author ffj
 *
 */
@Controller
public class InitController {

	/**
	 * 进入主页
	 * 
	 * @return
	 */
	@RequestMapping("/")
	public String index() {
		return "index";
	}

}
