package com.tw.web.service.impl;

import org.springframework.stereotype.Service;

import com.tw.web.hibernate.persistent.Pager;
import com.tw.web.service.PagerService;

@Service
public class PagerServiceImpl implements PagerService {

	@Override
	public Pager getPager(String currentPage, String pagerMethod, int totalRows) {
		
		//  定义pager对象，用于传到页面
    Pager pager = new Pager(totalRows);
    
    //    如果当前页号为空，表示为首次查询该页
    //    如果不为空，则刷新pager对象，输入当前页号等信息
    if (currentPage != null) {
        pager.refresh(Integer.parseInt(currentPage));
    }
    //    获取当前执行的方法，首页，前一页，后一页，尾页。
    if (pagerMethod != null) {
        if (pagerMethod.equals("first")) {
            pager.first();
        } else if (pagerMethod.equals("previous")) {
            pager.previous();
        } else if (pagerMethod.equals("next")) {
            pager.next();
        } else if (pagerMethod.equals("last")) {
            pager.last();
        }
    }
    else {
    	pager.localPage();
    }
    return pager;

	}

}
