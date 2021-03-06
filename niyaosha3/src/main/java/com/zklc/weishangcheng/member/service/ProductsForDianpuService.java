package com.zklc.weishangcheng.member.service;

import java.util.List;

import com.zklc.framework.service.IBaseService;
import com.zklc.weishangcheng.member.hibernate.persistent.ProductsForDianpu;

public interface ProductsForDianpuService extends IBaseService<ProductsForDianpu, Integer> {

	List<ProductsForDianpu> findbyDianPuIdAndProductId(Integer dianpuId, Integer productId);

	List<ProductsForDianpu> findPagerByPropertyAndSort(Integer type, Integer pageNum, Integer pageSize, Integer dianpuId);

}
