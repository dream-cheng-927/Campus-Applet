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


import com.dao.DiscusswanggoupindanDao;
import com.entity.DiscusswanggoupindanEntity;
import com.service.DiscusswanggoupindanService;
import com.entity.vo.DiscusswanggoupindanVO;
import com.entity.view.DiscusswanggoupindanView;

@Service("discusswanggoupindanService")
public class DiscusswanggoupindanServiceImpl extends ServiceImpl<DiscusswanggoupindanDao, DiscusswanggoupindanEntity> implements DiscusswanggoupindanService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusswanggoupindanEntity> page = this.selectPage(
                new Query<DiscusswanggoupindanEntity>(params).getPage(),
                new EntityWrapper<DiscusswanggoupindanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusswanggoupindanEntity> wrapper) {
		  Page<DiscusswanggoupindanView> page =new Query<DiscusswanggoupindanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusswanggoupindanVO> selectListVO(Wrapper<DiscusswanggoupindanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusswanggoupindanVO selectVO(Wrapper<DiscusswanggoupindanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusswanggoupindanView> selectListView(Wrapper<DiscusswanggoupindanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusswanggoupindanView selectView(Wrapper<DiscusswanggoupindanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
