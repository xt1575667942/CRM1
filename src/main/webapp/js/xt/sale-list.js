
//删除方法
function del(id) {

    alert(id);
    $.ajax({
        data: "chcId="+id,
        type: "POST",
        dataType: 'TEXT',
        url: "/ChanceController/delChance",
        error: function (data) {
            alert("出错了！！:");
        },
        success: function (data) {
            // alert(data);
            document.getElementById(''+id+'').style.display = "none";
            // reload();
        }
    });
}

//转换json格式
function renderTime(data){
    var da = eval('new ' + data.replace('/','','g').replace('/','','g'));
    return da.getFullYear()+"年"+ da.getMonth()+"月" +da.getDay()+"日" +da.getHours()+":"+da.getSeconds()+":"+da.getMinutes();
}

//显示所有及模糊查询
function d() {
    var cname2=$('#Cname').val();
    var ctile2=$('#Ctile').val();
    var cpeo2=$('#Cpeo').val();
    $.ajax({
        data:"chcCustName="+cname2+"&chcLinkman="+cpeo2,
        type:"POST",
        dataType: 'text',
        url:"/ChanceController/listChance",
        error:function(data){
            alert("出错了！！:");
        },
        success:function(data){
            $('#Cname').val("");
            $('#Ctile').val("")
            $('#Cpeo').val("");
            createShowingTable(data);

        }
    });
    // alert("d");
}

//动态的创建一个table
function createShowingTable(data) {
    var tableStr = "<table class=\"data_list_table datatableVolume\" >";
    tableStr = tableStr
        + "<tr class='list-header'>"
        +"<th>客户名称</th>"
        +"<th>概要</th>"
        +"<th>联系人</th>"
        +"<th>联系人电话</th>"
        +"<th>创建时间</th>"
        +"<th>操作</th>"
        +"</tr>";


    var dataObj=eval("("+data+")");
    for(var i=0;i<dataObj.length;i++){
        tableStr = tableStr

            + "<tr id='"+dataObj[i].chcId+"'>"
            +"<td class='list_data_text'>"+ dataObj[i].chcCustName + "</td>"
            +"<td class='list_data_ltext'>"+ dataObj[i].chcTitle + "</td>"
            + "<td class='list_data_text'>"+ dataObj[i].chcLinkman + "</td>"
            + "<td class='list_data_text'>"+ dataObj[i].chcTel + "</td>"
            +"<td class='list_data_number'>"+ renderTime("/Date("+dataObj[i].chcCreateDate+")/")+"</td>"
            +"<td class='list_data_op'> <img onclick='too("+dataObj[i].chcId+",1)' title='指派' src='../images/bt_linkman.gif' class='op_button' /> <img onclick='too("+dataObj[i].chcId+",2)' title='编辑' src='../images/bt_edit.gif' class='op_button' /> <img onclick=\"del('"+dataObj[i].chcId+"');\" title='删除' src='../images/bt_del.gif' class='op_button' /></td>"
            +"</tr>";
    }
    if(data.length==2){
        tableStr = tableStr +"<tr  >暂无记录</tr>";
    }

    tableStr = tableStr+ "<tr>" +
        "<th colspan=\"10\" class=\"pager\">" +
        "<div class=\"pager\">" +
        "共59条记录 每页<input value=\"10\" size=\"2\" />条\n" +
        "第<input value=\"1\" size=\"2\"/>页/共5页" +
        "<a href=\"#\">第一页</a>" +
        "<a href=\"#\">上一页</a>" +
        "<a href=\"#\">下一页</a>" +
        "<a href=\"#\">最后一页</a>" +
        "转到<input value=\"1\" size=\"2\" />页" +
        "<button width=\"20\" onclick=\"reload();\">GO</button>" +
        "</div>" +
        "</th>" +
        "</tr>";
        + "</table>";
    //添加到div中
    $("#tableAjax").html(tableStr);
}

function too(id,number){
    // alert(number);
    if(number==1){
        window.location.href="/input/jsp/sale/dispatch?id="+id;
    }else{
        window.location.href="/input/jsp/sale/edit?id="+id;
    }
}