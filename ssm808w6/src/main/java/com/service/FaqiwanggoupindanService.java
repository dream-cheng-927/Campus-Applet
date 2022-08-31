package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FaqiwanggoupindanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FaqiwanggoupindanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FaqiwanggoupindanView;


/**
 * 发起网购拼单
 *
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface FaqiwanggoupindanService extends IService<FaqiwanggoupindanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FaqiwanggoupindanVO> selectListVO(Wrapper<FaqiwanggoupindanEntity> wrapper);
   	
   	FaqiwanggoupindanVO selectVO(@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);
   	
   	List<FaqiwanggoupindanView> selectListView(Wrapper<FaqiwanggoupindanEntity> wrapper);
   	
   	FaqiwanggoupindanView selectView(@Param("ew") Wrapper<FaqiwanggoupindanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FaqiwanggoupindanEntity> wrapper);
   	
}

