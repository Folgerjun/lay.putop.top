package top.putop.mi.controller;

import java.util.Iterator;
import java.util.List;

import javax.websocket.server.PathParam;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import top.putop.mi.db.model.MiMessage;
import top.putop.mi.service.MiShowService;

/**
 * 域名信息控制类
 * 
 * @author ffj
 *
 */
@Controller
public class MiShowController {

	@Autowired
	MiShowService miShowService;

	/**
	 * 跳转域名显示页
	 * 
	 * @return
	 */
	@RequestMapping("/show")
	public String showMi() {
		return "show_mi";
	}

	/**
	 * 加载数据表格
	 * 
	 * @param miName
	 * @return
	 */
	@RequestMapping("/showMi")
	@ResponseBody
	public String showAllMess(@PathParam(value = "miName") String miName, @PathParam(value = "miType") String miType,
			@PathParam(value = "page") Integer page, @PathParam(value = "limit") Integer limit) {

		if (!StringUtils.isEmpty(miName)) {
			miName = miName.trim();
		}
		if (StringUtils.isEmpty(miType)) {
			miType = null;
		}

		Integer beforeNum = (page - 1) * limit;

		// 获取选择分页内容
		List<MiMessage> miMessages = miShowService.getAllMess(miName, miType, beforeNum, limit);

		// 获取总数
		int count = miShowService.getAllMess(miName, miType, null, null).size();

		Iterator<MiMessage> iterator = miMessages.iterator();
		// 重组url链接
		while (iterator.hasNext()) {
			MiMessage message = iterator.next();

			String miUrl = message.getMiUrl();
			if (!StringUtils.isEmpty(miUrl)) {

				String aMiUrl = "<a href='" + miUrl + "' target='_blank'>" + "大力点我！" + "</a>";
				message.setMiUrl(aMiUrl);
			}

		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("code", 0);
		jsonObject.put("msg", "");
		jsonObject.put("count", count);
		jsonObject.put("data", miMessages);

		return jsonObject.toJSONString();
	}

}
