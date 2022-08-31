package com.dao;

import com.entity.FaqiwanggoupindanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FaqiwanggoupindanVO;
import com.entity.view.FaqiwanggoupindanView;


/**
 * 发起网购拼单
 * 
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface FaqiwanggoupindanDao extends BaseMapper<FaqiwanggoupindanEntity> {
	
	List<FaqiwanggoupindanVO> selectListVO(@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);
	
	FaqiwanggoupindanVO selectVO(@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);
	
	List<FaqiwanggoupindanView> selectListView(@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);

	List<FaqiwanggoupindanView> selectListView(Pagination page,@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);
	
	FaqiwanggoupindanView selectView(@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);
	
}
