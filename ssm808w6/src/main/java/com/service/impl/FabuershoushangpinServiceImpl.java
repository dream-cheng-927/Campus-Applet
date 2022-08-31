package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.FabuershoushangpinDao;
import com.entity.FabuershoushangpinEntity;
import com.service.FabuershoushangpinService;
import com.entity.vo.FabuershoushangpinVO;
import com.entity.view.FabuershoushangpinView;

@Service("fabuershoushangpinService")
public class FabuershoushangpinServiceImpl extends ServiceImpl<FabuershoushangpinDao, FabuershoushangpinEntity> implements FabuershoushangpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FabuershoushangpinEntity> page = this.selectPage(
                new Query<FabuershoushangpinEntity>(params).getPage(),
                new EntityWrapper<FabuershoushangpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FabuershoushangpinEntity> wrapper) {
		  Page<FabuershoushangpinView> page =new Query<FabuershoushangpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FabuershoushangpinVO> selectListVO(Wrapper<FabuershoushangpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FabuershoushangpinVO selectVO(Wrapper<FabuershoushangpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FabuershoushangpinView> selectListView(Wrapper<FabuershoushangpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FabuershoushangpinView selectView(Wrapper<FabuershoushangpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
