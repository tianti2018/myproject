package com.zklc.weishangcheng.member.dao;
import java.text.ParseException;
import java.util.List;

import com.zklc.weishangcheng.member.hibernate.persistent.JifenUser;
import com.zklc.framework.dao.EntityDao;
public interface JifenUserDao extends EntityDao<JifenUser, Integer> {
	public List<JifenUser> findAllUserByNowDate() throws ParseException;
	public double findAllUserByIds(List<Integer> ids);
	
	public List findAllUserIdByrefferIds(List<Integer> refferIds,int flag,int level,int pageNum);
	
	public List findhongbaoAllUserIdByrefferIds(List<Integer> refferIds,int flag,int level);
}