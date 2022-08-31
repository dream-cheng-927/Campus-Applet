package com.entity.view;

import com.entity.FaqiwanggoupindanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 发起网购拼单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
@TableName("faqiwanggoupindan")
public class FaqiwanggoupindanView  extends FaqiwanggoupindanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FaqiwanggoupindanView(){
	}
 
 	public FaqiwanggoupindanView(FaqiwanggoupindanEntity faqiwanggoupindanEntity){
 	try {
			BeanUtils.copyProperties(this, faqiwanggoupindanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
