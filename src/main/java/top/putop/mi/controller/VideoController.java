package top.putop.mi.controller;

import java.util.Iterator;
import java.util.List;

import javax.websocket.server.PathParam;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import top.putop.mi.db.model.VedioMessage;
import top.putop.mi.service.VedioShowService;

/**
 * H5视频播放
 * 
 * @author ffj
 *
 */

@Controller
public class VideoController {

	@Autowired
	VedioShowService vedioShowService;

	@RequestMapping("/vedio")
	public String goVideoHtml(@PathParam(value = "vedioUrl") String vedioUrl,
			@PathParam(value = "vedioName") String vedioName, Model model) {

		model.addAttribute("vedioUrl", vedioUrl);
		model.addAttribute("vedioName", vedioName);

		return "vedio";
	}

	/**
	 * 进入视频首页
	 * 
	 * @return
	 */
	@RequestMapping("/vediohome")
	public String showVedio() {

		return "vedio_home";
	}

	/**
	 * 加载数据表格
	 * 
	 * @param miName
	 * @return
	 */
	@RequestMapping("/showVedio")
	@ResponseBody
	public String showAllMess(@PathParam(value = "vedioName") String vedioName,
			@PathParam(value = "vedioType") String vedioType, @PathParam(value = "page") Integer page,
			@PathParam(value = "limit") Integer limit) {

		if (!StringUtils.isEmpty(vedioName)) {
			vedioName = vedioName.trim();
		}
		if (StringUtils.isEmpty(vedioType)) {
			vedioType = null;
		}

		Integer beforeNum = (page - 1) * limit;

		List<VedioMessage> vedioMessages = vedioShowService.getAllMess(vedioName, vedioType, beforeNum, limit);

		int count = vedioShowService.getAllMess(vedioName, vedioType, null, null).size();

		Iterator<VedioMessage> iterator = vedioMessages.iterator();
		// 重组url链接
		while (iterator.hasNext()) {
			VedioMessage message = iterator.next();

			String vedioUrl = message.getVedioUrl();
			vedioName = message.getVedioName();
			if (!StringUtils.isEmpty(vedioUrl) && !StringUtils.isEmpty(vedioName)) {

				vedioUrl = "/vedio?vedioUrl=" + vedioUrl + "&vedioName=" + vedioName;

				String aVedioUrl = "<a href='" + vedioUrl + "' target='_blank'>" + "大力点我！" + "</a>";
				message.setVedioUrl(aVedioUrl);
			}

		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("code", 0);
		jsonObject.put("msg", "");
		jsonObject.put("count", count);
		jsonObject.put("data", vedioMessages);

		return jsonObject.toJSONString();
	}

}
