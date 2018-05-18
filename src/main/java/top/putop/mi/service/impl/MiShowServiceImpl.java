package top.putop.mi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.putop.mi.db.dao.MiMessageMapper;
import top.putop.mi.db.model.MiMessage;
import top.putop.mi.service.MiShowService;

/**
 * 域名信息数据实现类
 * 
 * @author ffj
 *
 */
@Service
public class MiShowServiceImpl implements MiShowService {

	@Autowired
	MiMessageMapper miMessageMapper;

	@Override
	public List<MiMessage> getAllMess(String miName, String miType, Integer beforeNum, Integer limitNum) {
		return miMessageMapper.getAllMess(miName, miType, beforeNum, limitNum);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return miMessageMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(MiMessage record) {
		return miMessageMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public MiMessage selectByPrimaryKey(Integer id) {
		return miMessageMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(MiMessage record) {
		return miMessageMapper.insertSelective(record);
	}

	@Override
	public int selectCount() {
		return miMessageMapper.selectCount();
	}

}
