package com.entity.view;

import com.entity.WanggoupindanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 网购拼单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
@TableName("wanggoupindan")
public class WanggoupindanView  extends WanggoupindanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WanggoupindanView(){
	}
 
 	public WanggoupindanView(WanggoupindanEntity wanggoupindanEntity){
 	try {
			BeanUtils.copyProperties(this, wanggoupindanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
