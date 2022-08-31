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


import com.dao.WanggoupindanDao;
import com.entity.WanggoupindanEntity;
import com.service.WanggoupindanService;
import com.entity.vo.WanggoupindanVO;
import com.entity.view.WanggoupindanView;

@Service("wanggoupindanService")
public class WanggoupindanServiceImpl extends ServiceImpl<WanggoupindanDao, WanggoupindanEntity> implements WanggoupindanService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WanggoupindanEntity> page = this.selectPage(
                new Query<WanggoupindanEntity>(params).getPage(),
                new EntityWrapper<WanggoupindanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WanggoupindanEntity> wrapper) {
		  Page<WanggoupindanView> page =new Query<WanggoupindanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WanggoupindanVO> selectListVO(Wrapper<WanggoupindanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WanggoupindanVO selectVO(Wrapper<WanggoupindanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WanggoupindanView> selectListView(Wrapper<WanggoupindanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WanggoupindanView selectView(Wrapper<WanggoupindanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
