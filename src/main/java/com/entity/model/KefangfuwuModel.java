package com.entity.model;

import com.entity.KefangfuwuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 客房服务
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-09 01:32:48
 */
public class KefangfuwuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 服务费用
	 */
	
	private String fuwufeiyong;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 时间段
	 */
	
	private String shijianduan;
		
	/**
	 * 服务详情
	 */
	
	private String fuwuxiangqing;
				
	
	/**
	 * 设置：服务费用
	 */
	 
	public void setFuwufeiyong(String fuwufeiyong) {
		this.fuwufeiyong = fuwufeiyong;
	}
	
	/**
	 * 获取：服务费用
	 */
	public String getFuwufeiyong() {
		return fuwufeiyong;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：时间段
	 */
	 
	public void setShijianduan(String shijianduan) {
		this.shijianduan = shijianduan;
	}
	
	/**
	 * 获取：时间段
	 */
	public String getShijianduan() {
		return shijianduan;
	}
				
	
	/**
	 * 设置：服务详情
	 */
	 
	public void setFuwuxiangqing(String fuwuxiangqing) {
		this.fuwuxiangqing = fuwuxiangqing;
	}
	
	/**
	 * 获取：服务详情
	 */
	public String getFuwuxiangqing() {
		return fuwuxiangqing;
	}
			
}
