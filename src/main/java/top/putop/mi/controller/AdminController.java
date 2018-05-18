package top.putop.mi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import top.putop.mi.db.model.MiMessage;
import top.putop.mi.db.model.VedioMessage;
import top.putop.mi.service.MiShowService;
import top.putop.mi.service.VedioShowService;

@Controller
public class AdminController {

	@Autowired
	MiShowService miShowService;

	@Autowired
	VedioShowService vedioShowService;

	@RequestMapping("/editMipage")
	@ResponseBody
	public String editMiPage(@PathParam(value = "miName") String miName, @PathParam(value = "miType") String miType,
			@PathParam(value = "page") Integer page, @PathParam(value = "limit") Integer limit) {

		if (!StringUtils.isEmpty(miName)) {
			miName = miName.trim();
		}

		if (StringUtils.isEmpty(miType)) {
			miType = null;
		}

		Integer beforeNum = (page - 1) * limit;

		List<MiMessage> messages = miShowService.getAllMess(miName, miType, beforeNum, limit);

		int count = miShowService.selectCount();

		JSONObject jsonObject = new JSONObject();
		jsonObject.put("code", 0);
		jsonObject.put("msg", "");
		jsonObject.put("count", count);
		jsonObject.put("data", messages);

		return jsonObject.toJSONString();
	}

	@RequestMapping("/editVediopage")
	@ResponseBody
	public String editVedioPage(@PathParam(value = "vedioName") String vedioName,
			@PathParam(value = "vedioType") String vedioType, @PathParam(value = "page") Integer page,
			@PathParam(value = "limit") Integer limit) {

		if (!StringUtils.isEmpty(vedioName)) {
			vedioName = vedioName.trim();
		}

		if (StringUtils.isEmpty(vedioType)) {
			vedioType = null;
		}

		Integer beforeNum = (page - 1) * limit;

		List<VedioMessage> messages = vedioShowService.getAllMess(vedioName, vedioType, beforeNum, limit);

		int count = vedioShowService.selectCount();

		JSONObject jsonObject = new JSONObject();
		jsonObject.put("code", 0);
		jsonObject.put("msg", "");
		jsonObject.put("count", count);
		jsonObject.put("data", messages);

		return jsonObject.toJSONString();
	}

	/**
	 * 进入后台主页
	 * 
	 * @param session
	 * @param username
	 * @return
	 */
	@RequestMapping("/admin")
	public String enterManageMent(HttpSession session, @PathParam(value = "username") String username) {

		if (StringUtils.isEmpty(username)) {
			return "index";
		} else {
			if ("fuck".equals(username)) {
				
				// 自己做验证处理 我这个只是方便处理
				
				session.setAttribute("username", username);
				return "admin";
			}
		}
		return "index";
	}

}
