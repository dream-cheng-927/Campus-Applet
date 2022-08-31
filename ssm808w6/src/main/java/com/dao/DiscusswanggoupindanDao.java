package com.dao;

import com.entity.DiscusswanggoupindanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusswanggoupindanVO;
import com.entity.view.DiscusswanggoupindanView;


/**
 * 网购拼单评论表
 * 
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface DiscusswanggoupindanDao extends BaseMapper<DiscusswanggoupindanEntity> {
	
	List<DiscusswanggoupindanVO> selectListVO(@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);
	
	DiscusswanggoupindanVO selectVO(@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);
	
	List<DiscusswanggoupindanView> selectListView(@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);

	List<DiscusswanggoupindanView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);
	
	DiscusswanggoupindanView selectView(@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);
	
}
