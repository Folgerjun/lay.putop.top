package top.putop.mi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import top.putop.mi.db.model.VedioMessage;
import top.putop.mi.service.VedioShowService;

/**
 * 后台管理视频控制类
 * 
 * @author ffj
 *
 */
@Controller
public class AdminVedioController {

	@Autowired
	VedioShowService vedioShowService;

	@RequestMapping("/addVedio")
	@ResponseBody
	public String addMi(VedioMessage record) {

		if (record == null) {
			return "fail";
		}

		int num = vedioShowService.insertSelective(record);

		if (num == 1) {
			return "success";
		}
		return "fail";
	}

	@RequestMapping("/updVedio")
	@ResponseBody
	public String updMi(VedioMessage record) {

		if (record == null) {
			return "fail";
		}

		int num = vedioShowService.updateByPrimaryKeySelective(record);

		if (num == 1) {
			return "success";
		}
		return "fail";
	}

	@RequestMapping("/delVedio")
	@ResponseBody
	public String delMi(Integer id) {

		if (id == null) {
			return "fail";
		}
		int num = vedioShowService.deleteByPrimaryKey(id);

		if (num == 1) {
			return "success";
		}
		return "fail";
	}

	@RequestMapping("/formVedio")
	public String showForm(Integer id, Model model) {

		VedioMessage message = vedioShowService.selectByPrimaryKey(id);
		model.addAttribute("message", message);
		return "formVedio";
	}

	@RequestMapping("/admin_vedio_show")
	public String show() {
		return "admin_vedio_show";
	}
}
