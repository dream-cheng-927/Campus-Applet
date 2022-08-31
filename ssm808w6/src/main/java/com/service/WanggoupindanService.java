package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WanggoupindanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WanggoupindanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WanggoupindanView;


/**
 * 网购拼单
 *
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface WanggoupindanService extends IService<WanggoupindanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WanggoupindanVO> selectListVO(Wrapper<WanggoupindanEntity> wrapper);
   	
   	WanggoupindanVO selectVO(@Param("ew") Wrapper<WanggoupindanEntity> wrapper);
   	
   	List<WanggoupindanView> selectListView(Wrapper<WanggoupindanEntity> wrapper);
   	
   	WanggoupindanView selectView(@Param("ew") Wrapper<WanggoupindanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WanggoupindanEntity> wrapper);
   	
}

