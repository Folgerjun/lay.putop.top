package top.putop.mi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import top.putop.mi.db.model.MiMessage;
import top.putop.mi.service.MiShowService;

/**
 * 后台管理域名控制类
 * 
 * @author ffj
 *
 */
@Controller
public class AdminMiController {

	@Autowired
	MiShowService miShowService;

	@RequestMapping("/add")
	@ResponseBody
	public String addMi(MiMessage record) {

		if (record == null) {
			return "fail";
		}

		int num = miShowService.insertSelective(record);

		if (num == 1) {
			return "success";
		}
		return "fail";
	}

	@RequestMapping("/upd")
	@ResponseBody
	public String updMi(MiMessage record) {

		if (record == null) {
			return "fail";
		}

		int num = miShowService.updateByPrimaryKeySelective(record);

		if (num == 1) {
			return "success";
		}
		return "fail";
	}

	@RequestMapping("/del")
	@ResponseBody
	public String delMi(Integer id) {

		if (id == null) {
			return "fail";
		}
		int num = miShowService.deleteByPrimaryKey(id);

		if (num == 1) {
			return "success";
		}
		return "fail";
	}

	@RequestMapping("/form")
	public String showForm(Integer id, Model model) {

		MiMessage message = miShowService.selectByPrimaryKey(id);
		model.addAttribute("message", message);
		return "form";
	}

	@RequestMapping("/admin_mi_show")
	public String show() {
		return "admin_mi_show";
	}
}
