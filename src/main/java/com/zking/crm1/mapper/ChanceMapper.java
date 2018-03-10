package com.zking.crm1.mapper;

import com.zking.crm1.model.Chance;
import com.zking.crm1.util.PageBean;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChanceMapper {
    int deleteByPrimaryKey(Long chcId);

    int insert(Chance record);

    int insertSelective(Chance record);

    Chance selectByPrimaryKey(Long chcId);

    int updateByPrimaryKeySelective(Chance record);

    int updateByPrimaryKey(Chance record);

    List<Chance> listchance(Chance chance);

    void editChanceStats(Chance chance);
}