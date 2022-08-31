package com.dao;

import com.entity.WanggoupindanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WanggoupindanVO;
import com.entity.view.WanggoupindanView;


/**
 * 网购拼单
 * 
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface WanggoupindanDao extends BaseMapper<WanggoupindanEntity> {
	
	List<WanggoupindanVO> selectListVO(@Param("ew") Wrapper<WanggoupindanEntity> wrapper);
	
	WanggoupindanVO selectVO(@Param("ew") Wrapper<WanggoupindanEntity> wrapper);
	
	List<WanggoupindanView> selectListView(@Param("ew") Wrapper<WanggoupindanEntity> wrapper);

	List<WanggoupindanView> selectListView(Pagination page,@Param("ew") Wrapper<WanggoupindanEntity> wrapper);
	
	WanggoupindanView selectView(@Param("ew") Wrapper<WanggoupindanEntity> wrapper);
	
}
