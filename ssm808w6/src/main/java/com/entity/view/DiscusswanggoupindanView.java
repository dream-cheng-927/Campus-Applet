package com.entity.view;

import com.entity.DiscusswanggoupindanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 网购拼单评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
@TableName("discusswanggoupindan")
public class DiscusswanggoupindanView  extends DiscusswanggoupindanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusswanggoupindanView(){
	}
 
 	public DiscusswanggoupindanView(DiscusswanggoupindanEntity discusswanggoupindanEntity){
 	try {
			BeanUtils.copyProperties(this, discusswanggoupindanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
