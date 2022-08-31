package com.entity.vo;

import com.entity.FabuershoushangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 发布二手商品
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-25 16:45:32
 */
public class FabuershoushangpinVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 商品类别
	 */
	
	private String shangpinleibie;
		
	/**
	 * 品牌
	 */
	
	private String pinpai;
		
	/**
	 * 损坏程度
	 */
	
	private String sunhuaichengdu;
		
	/**
	 * 其他说明
	 */
	
	private String qitashuoming;
		
	/**
	 * 原价
	 */
	
	private Float yuanjia;
		
	/**
	 * 现价
	 */
	
	private Float xianjia;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 联系方式
	 */
	
	private String lianxifangshi;
		
	/**
	 * 商品介绍
	 */
	
	private String shangpinjieshao;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：商品类别
	 */
	 
	public void setShangpinleibie(String shangpinleibie) {
		this.shangpinleibie = shangpinleibie;
	}
	
	/**
	 * 获取：商品类别
	 */
	public String getShangpinleibie() {
		return shangpinleibie;
	}
				
	
	/**
	 * 设置：品牌
	 */
	 
	public void setPinpai(String pinpai) {
		this.pinpai = pinpai;
	}
	
	/**
	 * 获取：品牌
	 */
	public String getPinpai() {
		return pinpai;
	}
				
	
	/**
	 * 设置：损坏程度
	 */
	 
	public void setSunhuaichengdu(String sunhuaichengdu) {
		this.sunhuaichengdu = sunhuaichengdu;
	}
	
	/**
	 * 获取：损坏程度
	 */
	public String getSunhuaichengdu() {
		return sunhuaichengdu;
	}
				
	
	/**
	 * 设置：其他说明
	 */
	 
	public void setQitashuoming(String qitashuoming) {
		this.qitashuoming = qitashuoming;
	}
	
	/**
	 * 获取：其他说明
	 */
	public String getQitashuoming() {
		return qitashuoming;
	}
				
	
	/**
	 * 设置：原价
	 */
	 
	public void setYuanjia(Float yuanjia) {
		this.yuanjia = yuanjia;
	}
	
	/**
	 * 获取：原价
	 */
	public Float getYuanjia() {
		return yuanjia;
	}
				
	
	/**
	 * 设置：现价
	 */
	 
	public void setXianjia(Float xianjia) {
		this.xianjia = xianjia;
	}
	
	/**
	 * 获取：现价
	 */
	public Float getXianjia() {
		return xianjia;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：联系方式
	 */
	 
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
				
	
	/**
	 * 设置：商品介绍
	 */
	 
	public void setShangpinjieshao(String shangpinjieshao) {
		this.shangpinjieshao = shangpinjieshao;
	}
	
	/**
	 * 获取：商品介绍
	 */
	public String getShangpinjieshao() {
		return shangpinjieshao;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
