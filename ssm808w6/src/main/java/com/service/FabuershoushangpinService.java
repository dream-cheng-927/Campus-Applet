package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FabuershoushangpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FabuershoushangpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FabuershoushangpinView;


/**
 * 发布二手商品
 *
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public interface FabuershoushangpinService extends IService<FabuershoushangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FabuershoushangpinVO> selectListVO(Wrapper<FabuershoushangpinEntity> wrapper);
   	
   	FabuershoushangpinVO selectVO(@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);
   	
   	List<FabuershoushangpinView> selectListView(Wrapper<FabuershoushangpinEntity> wrapper);
   	
   	FabuershoushangpinView selectView(@Param("ew") Wrapper<FabuershoushangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FabuershoushangpinEntity> wrapper);
   	
}

