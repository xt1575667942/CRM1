package com.zking.crm1.bizXt;

import com.zking.crm1.model.Dict;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IDictBiz {

    //显示所有的数据
    List<Dict> listDict(Dict dict, PageBean pageBean);

    //新建
    void addDict(Dict dict);

    //删除
    void delDict(Dict dict);

    //修改
    void editDict(Dict dict);
}
