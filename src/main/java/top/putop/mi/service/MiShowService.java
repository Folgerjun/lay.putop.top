package top.putop.mi.service;

import java.util.List;

import top.putop.mi.db.model.MiMessage;

/**
 * 域名展示数据接口
 * 
 * @author ffj
 *
 */
public interface MiShowService {

	/**
	 * 获取所有域名信息
	 * 
	 * @return
	 */
	List<MiMessage> getAllMess(String miName, String miType, Integer beforeNum, Integer limitNum);

	/**
	 * 根据id删除数据
	 * 
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * 根据id更新数据
	 * 
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(MiMessage record);

	/**
	 * 根据id查找数据
	 * 
	 * @param id
	 * @return
	 */
	MiMessage selectByPrimaryKey(Integer id);

	/**
	 * 新增信息
	 * 
	 * @param record
	 * @return
	 */
	int insertSelective(MiMessage record);

	/**
	 * 获取总数
	 * 
	 * @return
	 */
	int selectCount();

}
