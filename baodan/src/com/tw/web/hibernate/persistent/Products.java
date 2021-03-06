package com.tw.web.hibernate.persistent;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//@SuppressWarnings("serial")
//@Entity
//@Table(name="products") 
public class Products extends AbstractSymBasePO {
	
	private Integer productsId;
	private Integer userId;//上传人的id
	private String userName;//上传人姓名
	private String name;//产品名称
	private String headUrl;//缩略图
	private Double price;//价格
	private Double oldPrice;//原价
	private Date createDate;//创建时间
	private String productInfo;//界面详情  用来存储界面图文信息
	private Double levelone;//等级
	private Double leveltwo;
	private Double levelthr;
	private Integer levelfour;
	private Integer type;//首页图显示类型 0轮播图 1一行一款2一行两款
	private Integer returntype;//返利模式
	private Integer status;//0取消上架1上架
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "productsId", unique = true, nullable = false)
	public Integer getProductsId() {
		return productsId;
	}
	public void setProductsId(Integer productsId) {
		this.productsId = productsId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Column(name="userId")
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getLevelfour() {
		return levelfour;
	}
	public void setLevelfour(Integer levelfour) {
		this.levelfour = levelfour;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getHeadUrl() {
		return headUrl;
	}
	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(Double oldPrice) {
		this.oldPrice = oldPrice;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public Double getLevelone() {
		return levelone;
	}
	public void setLevelone(Double levelone) {
		this.levelone = levelone;
	}
	public Double getLeveltwo() {
		return leveltwo;
	}
	public void setLeveltwo(Double leveltwo) {
		this.leveltwo = leveltwo;
	}
	public Double getLevelthr() {
		return levelthr;
	}
	public void setLevelthr(Double levelthr) {
		this.levelthr = levelthr;
	}
	public Integer getReturntype() {
		return returntype;
	}
	public void setReturntype(Integer returntype) {
		this.returntype = returntype;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
}
