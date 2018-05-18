package top.putop.mi.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import top.putop.mi.db.model.VedioMessage;

/**
 * 视频数据接口
 * 
 * @author ffj
 *
 */
public interface VedioShowService {
	/**
	 * 获取数据信息
	 * 
	 * @return
	 */
	List<VedioMessage> getAllMess(@Param(value = "vedioName") String vedioName,
			@Param(value = "vedioType") String vedioType, @Param(value = "beforeNum") Integer beforeNum,
			@Param(value = "limitNum") Integer limitNum);

	/**
	 * 获取总数
	 * 
	 * @return
	 */
	int selectCount();

	int insertSelective(VedioMessage record);

	int updateByPrimaryKeySelective(VedioMessage record);

	int deleteByPrimaryKey(Integer id);

	VedioMessage selectByPrimaryKey(Integer id);

}
