package top.putop.mi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.putop.mi.db.dao.VedioMessageMapper;
import top.putop.mi.db.model.VedioMessage;
import top.putop.mi.service.VedioShowService;

@Service
public class VedioShowServiceImpl implements VedioShowService {

	@Autowired
	VedioMessageMapper vedioMessageMapper;

	@Override
	public List<VedioMessage> getAllMess(String vedioName, String vedioType, Integer beforeNum, Integer limitNum) {
		return vedioMessageMapper.getAllMess(vedioName, vedioType, beforeNum, limitNum);
	}

	@Override
	public int selectCount() {
		return vedioMessageMapper.selectCount();
	}

	@Override
	public int insertSelective(VedioMessage record) {
		return vedioMessageMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(VedioMessage record) {
		return vedioMessageMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return vedioMessageMapper.deleteByPrimaryKey(id);
	}

	@Override
	public VedioMessage selectByPrimaryKey(Integer id) {
		return vedioMessageMapper.selectByPrimaryKey(id);
	}

}
