package com.dao;

import com.entity.FabuershoushangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FabuershoushangpinVO;
import com.entity.view.FabuershoushangpinView;


/**
 * 发布二手商品
 * 
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface FabuershoushangpinDao extends BaseMapper<FabuershoushangpinEntity> {
	
	List<FabuershoushangpinVO> selectListVO(@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);
	
	FabuershoushangpinVO selectVO(@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);
	
	List<FabuershoushangpinView> selectListView(@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);

	List<FabuershoushangpinView> selectListView(Pagination page,@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);
	
	FabuershoushangpinView selectView(@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);
	
}
