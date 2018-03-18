package com.zking.crm1.bizXt;

import com.zking.crm1.model.Storage;
import com.zking.crm1.util.PageBean;

import java.util.List;

public interface IStorageBiz {

    //显示
    List<Storage> list(Storage storage, PageBean pageBean);
}
