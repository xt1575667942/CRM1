function d() {
    //alert(window.location.href);
    // alert(window.location.search);
    var url = window.location.search;
    var pos=url.indexOf("=");
    var str = url.substr(pos+1,url.length);
    $.ajax({
        data:"chcId="+str,
        type:"POST",
        dataType: 'text',
        url:"/ChanceController/loadChance",
        error:function(data){
            alert("出错了！！:");
        },
        success:function(data){
            var dataObj=eval("("+data+")");
            openTable(dataObj)
        }
    });
    // alert("d");
}


//动态生成table
function openTable(dataObj) {
    var tablevalue="<table class=\"query_form_table\">" +
        "<tr>" +
        "<th>编号</th>" +
        "<td><input readonly value='"+dataObj.chcId+"' /></td>" +
        "<th>机会来源</th>" +
        "<td><input name='T4' size=\"20\" value='"+dataObj.chcSource+"'/></td>" +
        "</tr>" +
        "<tr>" +
        "<th>客户名称</th>" +
        "<td><input value='"+dataObj.chcCustName+"' /><span class=\"red_star\">*</span></td>" +
        "<th>成功机率（%）</th>" +
        "<td><input value=\"70\" value='"+dataObj.chcRate+"'/><span class=\"red_star\">*</span></td>" +
        "</tr>" +
        "<tr>" +
        "<th>概要</th>" +
        "<td colspan=\"3\"><input value='"+dataObj.chcTitle+"' name=\"T0\" size=\"52\" /><span class=\"red_star\">*</span></td>" +
        "</tr>" +
        "<tr>" +
        "<th>联系人</th>" +
        "<td><input name=\"T21\" value='"+dataObj.chcLinkman+"' size=\"20\" /></td>" +
        "<th>联系人电话</th>" +
        "<td><input name=\"T5\" value='"+dataObj.chcTel+"' size=\"20\" /></td>" +
        "</tr>\n" +
        "<tr>\n" +
        "<th>机会描述</th>" +
        "<td colspan=\"3\"><textarea rows=\"6\" cols=\"50\" name=\"S1\">"+dataObj.chcDesc+"</textarea><span class=\"red_star\">*</span></td>" +
        "</tr>\n" +
        "<tr>\n" +
        "<th>创建人</th>" +
        "<td><input name=\"T19\" value='"+dataObj.chcCreateBy+"' readonly size=\"20\" /><span class=\"red_star\">*</span></td>" +
        "<th>创建时间</th>" +
        "<td>"+dataObj.chcCreateDate+"</td>" +
        "</tr>" +
        "</table>" +
        "<br />" +
        "<table class=\"query_form_table\" id=\"table1\">" +
        "<tr>" +
        "<th>指派给</th>" +
        "<td>" +
        "<select name=\"D1\">" +
        "<option>请选择...</option>" +
        "<option>小明</option>" +
        "<option>旺财</option>" +
        "<option>球球</option>" +
        "<option>孙小美</option>" +
        "<option>周洁轮</option>" +
        "</select> <span class=\"red_star\">*</span></td>\n" +
        "<th>指派时间</th>" +
        "<td>" +
        "<input id=\"t2\" name=\"T20\" readonly size=\"20\" /><span class=\"red_star\">*</span></td>" +
        "</tr>" +
        "</table>";
    //添加到div中
    $("#tableAjax").html(tablevalue);
}

