package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusswanggoupindanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusswanggoupindanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusswanggoupindanView;


/**
 * 网购拼单评论表
 *
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface DiscusswanggoupindanService extends IService<DiscusswanggoupindanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusswanggoupindanVO> selectListVO(Wrapper<DiscusswanggoupindanEntity> wrapper);
   	
   	DiscusswanggoupindanVO selectVO(@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);
   	
   	List<DiscusswanggoupindanView> selectListView(Wrapper<DiscusswanggoupindanEntity> wrapper);
   	
   	DiscusswanggoupindanView selectView(@Param("ew") Wrapper<DiscusswanggoupindanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusswanggoupindanEntity> wrapper);
   	
}

