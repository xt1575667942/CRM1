
//指派的方法
function edits() {
    var kkd=$('#kkd').val();
    var due_id=$('#due_id').val();
    $.ajax({
        data:"chcId="+kkd+"&chcStaus=2"+"&dueId="+due_id,
        type:"POST",
        dataType: 'TEXT',
        url:"/ChanceController/editChanceStas",
        error:function(data){
            alert("出错了！！:");
        },
        success:function(data){
            alert("指派成功");
            back();
        }
    });
    // alert("d");
}

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
        "<td ><input id='kkd' value='"+dataObj.chcId+"'style='display: none;'/> "+dataObj.chcId+"</td>" +
        "<th>机会来源</th>" +
        "<td>"+dataObj.chcSource+ "</td>" +
        "</tr>" +
        "<tr>" +
        "<th>客户名称</th>" +
        "<td>"+dataObj.chcCustName+"</td>" +
        "<th>成功机率（%）</th>" +
        "<td>&nbsp;"+dataObj.chcRate+"</td>" +
        "</tr>" +
        "<tr>" +
        "<th>概要</th>" +
        "<td colspan=\"3\">"+dataObj.chcTitle+"</td>" +
        "</tr>" +
        "<tr>" +
        "<th>联系人</th>" +
        "<td>"+dataObj.chcLinkman+"</td>" +
        "<th>联系人电话</th>" +
        "<td>"+dataObj.chcTel+"</td>" +
        "</tr>\n" +
        "<tr>\n" +
        "<th>机会描述</th>" +
        "<td colspan=\"3\">"+dataObj.chcDesc+"</td>" +
        "</tr>\n" +
        "<tr>\n" +
        "<th>创建人</th>" +
        "<td>"+dataObj.chcCreateBy+"</td>" +
        "<th>创建时间</th>" +
        "<td>"+dataObj.chcCreateDate+"</td>" +
        "</tr>" +
        "</table>" +
        "<br />" +
        "<table class=\"query_form_table\" id=\"table1\">" +
        "<tr>" +
        "<th>指派给</th>" +
        "<td>" +
        "<select id='due_id' name=\"D1\">" +
        "<option value='0'>请选择...</option>" +
        "<option value='1'>小明</option>" +
        "<option value='2'>旺财</option>" +
        "<option value='3'>球球</option>" +
        "<option value='4'>孙小美</option>" +
        "<option value='5'>周洁轮</option>" +
        "</select> <span class=\"red_star\">*</span></td>\n" +
        "<th>指派时间</th>" +
        "<td>" +
        "<input VALUE='系统默认' id=\"t2\" name=\"T20\" readonly size=\"20\" /><span class=\"red_star\">*</span></td>" +
        "</tr>" +
        "</table>";
    //添加到div中
    $("#tableAjax").html(tablevalue);
}

