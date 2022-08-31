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


import com.dao.FaqiwanggoupindanDao;
import com.entity.FaqiwanggoupindanEntity;
import com.service.FaqiwanggoupindanService;
import com.entity.vo.FaqiwanggoupindanVO;
import com.entity.view.FaqiwanggoupindanView;

@Service("faqiwanggoupindanService")
public class FaqiwanggoupindanServiceImpl extends ServiceImpl<FaqiwanggoupindanDao, FaqiwanggoupindanEntity> implements FaqiwanggoupindanService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FaqiwanggoupindanEntity> page = this.selectPage(
                new Query<FaqiwanggoupindanEntity>(params).getPage(),
                new EntityWrapper<FaqiwanggoupindanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FaqiwanggoupindanEntity> wrapper) {
		  Page<FaqiwanggoupindanView> page =new Query<FaqiwanggoupindanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FaqiwanggoupindanVO> selectListVO(Wrapper<FaqiwanggoupindanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FaqiwanggoupindanVO selectVO(Wrapper<FaqiwanggoupindanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FaqiwanggoupindanView> selectListView(Wrapper<FaqiwanggoupindanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FaqiwanggoupindanView selectView(Wrapper<FaqiwanggoupindanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
