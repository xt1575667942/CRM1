function  s() {
    alert($('#dds').val());

    /**
     * Name 载入数据
     */
    $('#ssssssd').datagrid({
        url:'/ChanceController/listChance',
        rownumbers:true,
        singleSelect:false,
        pageSize:20,
        pagination:true,
        multiSort:true,
        fitColumns:true,
        fit:true,
        columns:[[
            { field:'chcId',title:'编号',width:100,sortable:true},
            { field:'chcCustName',title:'客户名称',width:100,sortable:true},
            { field:'chcTitle',title:'概要',width:100,sortable:true},
            { field:'chcLinkman',title:'联系人',width:100,sortable:true},
            { field:'chcTel',title:'联系人电话',width:100,sortable:true},
            { field:'chcCreateDate',title:'创建时间',width:100,sortable:true},
            { field:'chcStaus',title:'状态',width:100,sortable:true},
            { title:'操作',width:100,sortable:true}
        ]]
    });
    alert("s");
}