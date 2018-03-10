function add() {

    var source=$('#source').val();
    var custname=$('#custname').val();
    var rate=$('#rate').val();
    var title=$('#title').val();
    var linkman=$('#linkman').val();

    var tel=$('#tel').val();
    var desc=$('#desc').val();
    var createBy=$('#createBy').val();
    var dueIid=$('#dueIid').val();
    alert("dad"+source+dueIid+desc+custname+title+linkman+tel+desc+createBy+dueIid);
    $.ajax({
        data:"chcCustName="+custname+"&chcTitle="+title+"&&chcRate="+rate +"&chcDesc="+desc +"&chcDueId="+dueIid +"&chcLinkman="+linkman+"&chcCreateBy="+createBy +"&chcSource="+source+"&chcTel="+tel,
        type: "POST",
        dataType: 'TEXT',
        url: "/ChanceController/addChance",
        error: function (data) {
            alert("no");
        },
        success: function (data) {
            if(confirm("创建成功 是否继续创建?")){
                reload();
            }else{
                back();
            }


        }
    });
}