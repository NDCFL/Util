function getdata(val){
    if(val=="bt1"){
        $.post(
            "/utils/getInfo",
            {
                param:$("#form1").serialize(),
                url:"http://tool.oschina.net/action/format/html"
            },
            function (msg) {
                if(msg.result=="success"){
                    var data = JSON.parse(msg.message);
                    $("#data1").val(data.fhtml);
                }else{
                    hui.toast("解析失败!");
                }
            },"json"
        );
    }else if(val=="bt2"){
        $.post(
            "/utils/getInfo",
            {
                param:$("#form2").serialize(),
                url:"http://tool.oschina.net/action/format/xml"
            },
            function (msg) {
                if(msg.result=="success"){
                    var data = JSON.parse(msg.message);
                    if(data.fxml){
                        $("#data2").val(data.fxml);
                    }else{
                        hui.toast("解析失败,格式错误");
                    }
                }else if(msg.result=="fail"){
                    hui.toast("解析失败!");
                }else{
                    hui.toast("解析失败,格式错误");
                }
            },"json"
        );
    }else if(val=="bt5"){
        $.post(
            "/utils/getInfo",
            {
                param:$("#form5").serialize(),
                url:"http://tool.oschina.net/action/format/java"
            },
            function (msg) {
                if(msg.result=="success"){
                    var data = JSON.parse(msg.message);
                    if(data.fjava){
                        $("#data5").val(data.fjava);
                    }else{
                        hui.toast("解析失败,格式错误");
                    }
                }else if(msg.result=="fail"){
                    hui.toast("解析失败!");
                }else{
                    hui.toast("解析失败,格式错误");
                }
            },"json"
        );
    }else if(val=="bt6"){
        $.post(
            "/utils/getInfo",
            {
                param:$("#form6").serialize(),
                url:"http://tool.oschina.net/action/format/sql"
            },
            function (msg) {
                if(msg.result=="success"){
                    var data = JSON.parse(msg.message);
                    if(data.fsql){
                        $("#data6").val(data.fsql);
                    }else{
                        hui.toast("解析失败,格式错误");
                    }
                }else if(msg.result=="fail"){
                    hui.toast("解析失败!");
                }else{
                    hui.toast("解析失败,格式错误");
                }
            },"json"
        );
    }
}
function  copydata(val) {
    if(val=="copy1"){
        var target=document.getElementById("data1");
        target.select(); // 选择文本
        document.execCommand("copy"); // 执行浏览器复制命令
        hui.toast("拷贝成功!");
    }else if(val=="copy2"){
        var target=document.getElementById("data2");
        target.select(); // 选择文本
        document.execCommand("copy"); // 执行浏览器复制命令
        hui.toast("拷贝成功!");
    }else if(val =="copy3"){
        var target=document.getElementById("fcss");
        target.select(); // 选择文本
        document.execCommand("copy"); // 执行浏览器复制命令
        hui.toast("拷贝成功!");
    }else if(val =="copy4"){
        var target=document.getElementById("fjs");
        target.select(); // 选择文本
        document.execCommand("copy"); // 执行浏览器复制命令
        hui.toast("拷贝成功!");
    }else if(val =="copy5"){
        var target=document.getElementById("data5");
        target.select(); // 选择文本
        document.execCommand("copy"); // 执行浏览器复制命令
        hui.toast("拷贝成功!");
    }else if(val =="copy6"){
        var target=document.getElementById("data6");
        target.select(); // 选择文本
        document.execCommand("copy"); // 执行浏览器复制命令
        hui.toast("拷贝成功!");
    }
}

$(function(){
    $("#cssBeautify").popover({
        'title':'CSS代码格式化 CSS Beautify',
        'content':'CSS Beautify 是一个 JavaScript 实现的用来对 CSS 代码进行格式化使之更加容易阅读的工具。',
        'placement':'bottom'
    });
});
function format_(){
    var style = $("#cssdata").val();
    var options;
    options = {
        indent: '    '
    };
    if (document.getElementById('tab').checked) {
        options.indent = '\t';
    }
    if (document.getElementById('openbrace-separate-line').checked) {
        options.openbrace = 'separate-line';
    }
    var fmt = cssbeautify(style,options);
    $("#fcss").val(fmt);
}

function do_js_beautify() {
    $("#fjs").html("");
    var js_source =$('#jsdata').val().replace(/^\s+/, '');
    if(js_source.length==0)
        return;
    var tabsize = $('#tabsize').val();
    tabchar = ' ';
    if (tabsize == 1)
        tabchar = '\t';
    var fjs = js_beautify(js_source, tabsize, tabchar);
    $("#fjs").val(fjs);
}