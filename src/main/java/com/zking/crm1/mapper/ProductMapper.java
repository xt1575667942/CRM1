package com.zking.crm1.mapper;

import com.zking.crm1.model.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductMapper {
    int deleteByPrimaryKey(Long prodId);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Long prodId);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    List<Product> list(Product product);
}