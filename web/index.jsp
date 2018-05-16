<%--
  Created by IntelliJ IDEA.
  User: jb9
  Date: 2018/5/16
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java" %>
<%
  String path = request.getContextPath();
%>
<style>
  /* toast */
  #hui-toast{width:100%; position:fixed; z-index:21; left:0; bottom:50px; text-align:center;}
  #hui-toast-msg{margin:0 auto; line-height:22px; background:rgba(0,0,0,0.7); padding:10px; color:#FFFFFF; font-size:14px; text-align:center; max-width:200px; border-radius:6px; display:inline-block;}
</style>
<!DOCTYPE html>
<html>
<head>
  <meta name="keywords" content="格式化工具，最简化的工具，支持解析html,js,java,json,sql,xml..,优雅的格式化工具，大气">
  <meta name="description" content="格式化工具为程序员们提供优雅的，html,js,java,json,sql,xml..格式工具,">
  <title>格式化工具</title>
  <link rel="shortcut icon" href="<%=path%>/static/img/favicon.ico" >
  <link rel="icon" href="<%=path%>/static/img/favicon.ico">
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="<%=path%>/static/js/jquery.3.2.1.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="<%=path%>/static/js/jquery.form.min.js"></script>
</head>
<body>
<div style="height: 50px;width: 100%;background-color:#5ac755;">
  <img src="<%=path%>/static/img/util.png" alt="" style="margin-left: 10%;" />
</div>
<div style="width: 60%;text-align: center;margin: auto;">
  <h1>格式化代码工具</h1>
  <ul id="myTab" class="nav nav-tabs">
    <li class="active">
      <a href="#html" data-toggle="tab">
        html格式化
      </a>
    </li>
    <li>
      <a href="#xml" data-toggle="tab">XML格式化</a>
    </li>
    <li class="dropdown">
      <a href="#css" data-toggle="tab">
        CSS格式化
      </a>
    </li>
    <li class="dropdown">
      <a href="#json" data-toggle="tab">
        JSON格式化
      </a>
    </li>
    <li class="dropdown">
      <a href="#js" data-toggle="tab">
        JavaScript格式化
      </a>
    </li>
    <li class="dropdown">
      <a href="#java" data-toggle="tab">
        JAVA格式化
      </a>
    </li>
    <li class="dropdown">
      <a href="#sql" data-toggle="tab">
        SQL格式化
      </a>
    </li>
  </ul>
  <div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="html">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        HTML格式化采用<code id="jsoup6" data-original-title=""><a href="http://www.w3school.com.cn/xml/index.asp" target="_blank">XML标准化格式</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化html
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <form id="form1" method="post"  >
            <textarea class="form-control" rows="10" name="html" id="htmldata" style="width: 100%;"></textarea>
            <button type="button" class="btn btn-primary" id="bt1" onclick="getdata(this.id);">格式化</button>
            <button type="button" class="btn btn-success" id="copy1" onclick="copydata(this.id);">拷贝格式化代码</button>
          </form>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得html
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" rows="10" id="data1" style="width: 100%;"></textarea>
        </div>
      </div>

    </div>
    <div class="tab-pane fade" id="xml">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        XML格式化采用<code id="jsoup" data-original-title=""><a href="http://www.oschina.net/p/jsoup" target="_blank">Jsoup</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化XML
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <form id="form2">
            <textarea class="form-control" rows="8" name="xml" id="htmldata1" style="width: 100%;"></textarea>
            <button type="button" class="btn btn-primary" id="bt2" onclick="getdata(this.id);">格式化</button>
            <button type="button" class="btn btn-success" id="copy2" onclick="copydata(this.id);">拷贝格式化代码</button>
          </form>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得XML
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" rows="8" id="data2" style="width: 100%;"></textarea>
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="css">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        CSS格式化采用<code id="jsoup1" data-original-title=""><a href="http://www.w3school.com.cn/css/index.asp" target="_blank">CSS</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化CSS
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <form id="form3">
            <textarea class="form-control" name="css" id="cssdata" onchange="format_()" onkeyup="format_()" rows="8" style="width: 100%;"></textarea>
            <div>
                <span>缩进方式:</span>
                <input type="radio" name="indent" id="tab" onchange="format_()" checked=""> Tab
                <input type="radio" name="indent" id="whitespace" onchange="format_()"> Spaces
                <span>缩进方式:</span>
                <input type="radio" name="openbrace" id="openbrace-end-of-line" onchange="format_()" checked=""> 行结束
              <input type="radio" name="openbrace" id="openbrace-separate-line" onchange="format_()"> 换行
              <button type="button" class="btn btn-primary" id="bt3" onclick="format_()">格式化</button>
              <button type="button" class="btn btn-success" id="copy3" onclick="copydata(this.id);">拷贝格式化代码</button>
            </div>
          </form>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得CSS
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" id="fcss" name="fcss" rows="8" style="width: 100%;resize:none;" class="resizable processed"></textarea>
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="json">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        JSON格式化采用<code id="jsoup2" data-original-title=""><a href="https://www.bejson.com/" target="_blank">JSON</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化JSON
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" rows="8" name="json" id="RawJson" style="resize:none;width: 100%;"></textarea>
          <label for="TabSize">缩进量：</label>
          <select id="TabSize"  style="width: 60px;height: 30px" onchange="TabSizeChanged()" class="span1">
            <option value="1">1</option>
            <option value="2" selected="true">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
          </select>
          <label for="QuoteKeys">
            <input type="checkbox" id="QuoteKeys"  onclick="QuoteKeysClicked()" checked="true">引号
          </label>
          <span id="CollapsibleViewHolder">
            <label for="CollapsibleView">
              <input type="checkbox" id="CollapsibleView" onclick="CollapsibleViewClicked()" checked="true">显示控制
            </label>
          </span>
          <span id="CollapsibleViewDetail" style="visibility: visible; margin-right: 10px;">
            <a href="javascript:void(0);" onclick="ExpandAllClicked()">展开</a>
            <a href="javascript:void(0);" onclick="CollapseAllClicked()">叠起</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(3)">2级</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(4)">3级</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(5)">4级</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(6)">5级</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(7)">6级</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(8)">7级</a>
            <a href="javascript:void(0);" onclick="CollapseLevel(9)">8级</a>
          </span>
          <button type="button" class="btn btn-primary" onclick="Process()">格式化</button>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得JSON
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <div id="Canvas" class="Canvas well resizable processed" style="height:200px;overflow:auto;margin-bottom:0px;">
          </div>
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="js">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        JS格式化采用<code id="jsoup3" data-original-title=""><a href="http://www.runoob.com/js/js-tutorial.html" target="_blank">Js</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化JS
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" rows="8" name="js" id="jsdata" onchange="do_js_beautify()" onkeyup="do_js_beautify()" style="resize:none;width: 100%;" class="resizable processed"></textarea>
          缩进方式：<select name="tabsize" id="tabsize" class="span2" style="height: 30px;width: 100px" onchange="do_js_beautify()">
            <option value="1">Tab符缩进</option>
            <option value="2">2个空格缩进</option>
            <option value="4" selected="selected">4个空格缩进</option>
            <option value="8">8个空格缩进</option>
          </select>
          <button type="button" class="btn btn-primary" onclick="do_js_beautify()">格式化</button>
          <button type="button" class="btn btn-success" id="copy4" onclick="copydata(this.id)">拷贝格式化代码</button>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得JS
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" rows="8" id="fjs" name="fjs" style="resize:none;width: 100%;" class="resizable processed"></textarea>
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="java">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        JAVA格式化采用<code id="jsoup4" data-original-title=""><a href="https://www.jetbrains.com/idea/" target="_blank">java</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化Java
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <form id="form5">
            <textarea class="form-control" rows="8" id="htmldata5" name="java" style="width: 100%;"></textarea>
            <button type="button" class="btn btn-primary" id="bt5" onclick="getdata(this.id);">格式化</button>
            <button type="button" class="btn btn-success" id="copy5" onclick="copydata(this.id);">拷贝格式化代码</button>
          </form>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得Java
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" id="data5" rows="8" style="width: 100%;"></textarea>
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="sql">
      <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: 40px;line-height: 40px;width: 100%;padding-left: 30px;">
        SQL格式化采用<code id="jsoup5" data-original-title=""><a href="http://www.w3school.com.cn/sql/index.asp" target="_blank">sql</a></code>
      </div>
      <div style="width: 100%;">
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height:auto;line-height: 40px;width: 100%;padding-left: 30px;">
          带格式化sql
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <form id="form6">
            <textarea class="form-control" rows="8" name="sql" id="sqldata" style="resize:none;width: 100%;" class="resizable processed"></textarea>
            <label for="sqlType">
              数据库类型：
            </label>
            <select id="sqlType" name="sqlType" style="height: 30px;width: 100px" class="span2">
              <option value="mysql">MySQL</option>
              <option value="sqlserver">SQL Server</option>
              <option value="oracle">Oracle</option>
              <option value="postgresql">PostgreSQL</option>
            </select>
            <button type="button" class="btn btn-primary" id="bt6" onclick="getdata(this.id);">格式化</button>
            <button type="button" class="btn btn-success" id="copy6" onclick="copydata(this.id);">拷贝格式化代码</button>
          </form>
        </div>
        <div style="text-align: left;margin-top: 20px;background-color: #bce8f1;height: auto;line-height: 40px;width: 100%;padding-left: 30px;">
          格式化后得sql
        </div>
        <div style="text-align: left;margin-top: 20px;height: auto;line-height: 40px;width: 100%;">
          <textarea class="form-control" rows="8" id="data6" style="width: 100%;"></textarea>
        </div>
      </div>
    </div>
  </div>
</div>
<div style="height: 50px;width: 100%;text-align: center;line-height:50px ;margin-top: 40px;">
  格式化工具由絮落锦乡所有
</div>
<script src="<%=path%>/static/js/hui.js" type="text/javascript"></script>
<script src="<%=path%>/static/js/cssbeautify.js" type="text/javascript"></script>
<script src="<%=path%>/static/js/c.js" type="text/javascript"></script>
<script src="<%=path%>/static/js/jsbeautify.js" type="text/javascript"></script>
<script src="<%=path%>/static/js/main.js" type="text/javascript"></script>
<script type="text/javascript">
//    function getdata(val){
//        if(val=="bt1"){
//            $.post(
//                "/util/getInfo",
//                {
//                  param:$("#form1").serialize(),
//                  url:"http://tool.oschina.net/action/format/html"
//                },
//                function (msg) {
//                    if(msg.result=="success"){
//                        var data = JSON.parse(msg.message);
//                        $("#data1").val(data.fhtml);
//                    }else{
//                        hui.toast("解析失败!");
//                    }
//                },"json"
//            );
//        }else if(val=="bt2"){
//            $.post(
//                "/util/getInfo",
//                {
//                    param:$("#form2").serialize(),
//                    url:"http://tool.oschina.net/action/format/xml"
//                },
//                function (msg) {
//                    if(msg.result=="success"){
//                        var data = JSON.parse(msg.message);
//                        if(data.fxml){
//                            $("#data2").val(data.fxml);
//                        }else{
//                            hui.toast("解析失败,格式错误");
//                        }
//                    }else if(msg.result=="fail"){
//                        hui.toast("解析失败!");
//                    }else{
//                        hui.toast("解析失败,格式错误");
//                    }
//                },"json"
//            );
//        }else if(val=="bt5"){
//            $.post(
//                "/util/getInfo",
//                {
//                    param:$("#form5").serialize(),
//                    url:"http://tool.oschina.net/action/format/java"
//                },
//                function (msg) {
//                    if(msg.result=="success"){
//                        var data = JSON.parse(msg.message);
//                        if(data.fjava){
//                            $("#data5").val(data.fjava);
//                        }else{
//                            hui.toast("解析失败,格式错误");
//                        }
//                    }else if(msg.result=="fail"){
//                        hui.toast("解析失败!");
//                    }else{
//                        hui.toast("解析失败,格式错误");
//                    }
//                },"json"
//            );
//        }else if(val=="bt6"){
//            $.post(
//                "/util/getInfo",
//                {
//                    param:$("#form6").serialize(),
//                    url:"http://tool.oschina.net/action/format/sql"
//                },
//                function (msg) {
//                    if(msg.result=="success"){
//                        var data = JSON.parse(msg.message);
//                        if(data.fsql){
//                            $("#data6").val(data.fsql);
//                        }else{
//                            hui.toast("解析失败,格式错误");
//                        }
//                    }else if(msg.result=="fail"){
//                        hui.toast("解析失败!");
//                    }else{
//                        hui.toast("解析失败,格式错误");
//                    }
//                },"json"
//            );
//        }
//    }
//    function  copydata(val) {
//        if(val=="copy1"){
//            var target=document.getElementById("data1");
//            target.select(); // 选择文本
//            document.execCommand("copy"); // 执行浏览器复制命令
//            hui.toast("拷贝成功!");
//        }else if(val=="copy2"){
//            var target=document.getElementById("data2");
//            target.select(); // 选择文本
//            document.execCommand("copy"); // 执行浏览器复制命令
//            hui.toast("拷贝成功!");
//        }else if(val =="copy3"){
//            var target=document.getElementById("fcss");
//            target.select(); // 选择文本
//            document.execCommand("copy"); // 执行浏览器复制命令
//            hui.toast("拷贝成功!");
//        }else if(val =="copy4"){
//            var target=document.getElementById("fjs");
//            target.select(); // 选择文本
//            document.execCommand("copy"); // 执行浏览器复制命令
//            hui.toast("拷贝成功!");
//        }else if(val =="copy5"){
//            var target=document.getElementById("data5");
//            target.select(); // 选择文本
//            document.execCommand("copy"); // 执行浏览器复制命令
//            hui.toast("拷贝成功!");
//        }else if(val =="copy6"){
//            var target=document.getElementById("data6");
//            target.select(); // 选择文本
//            document.execCommand("copy"); // 执行浏览器复制命令
//            hui.toast("拷贝成功!");
//        }
//    }
//
//    $(function(){
//        $("#cssBeautify").popover({
//            'title':'CSS代码格式化 CSS Beautify',
//            'content':'CSS Beautify 是一个 JavaScript 实现的用来对 CSS 代码进行格式化使之更加容易阅读的工具。',
//            'placement':'bottom'
//        });
//    });
//    function format_(){
//        var style = $("#cssdata").val();
//        var options;
//        options = {
//            indent: '    '
//        };
//        if (document.getElementById('tab').checked) {
//            options.indent = '\t';
//        }
//        if (document.getElementById('openbrace-separate-line').checked) {
//            options.openbrace = 'separate-line';
//        }
//        var fmt = cssbeautify(style,options);
//        $("#fcss").val(fmt);
//    }
//
//    function do_js_beautify() {
//        $("#fjs").html("");
//        var js_source =$('#jsdata').val().replace(/^\s+/, '');
//        if(js_source.length==0)
//            return;
//        var tabsize = $('#tabsize').val();
//        tabchar = ' ';
//        if (tabsize == 1)
//            tabchar = '\t';
//        var fjs = js_beautify(js_source, tabsize, tabchar);
//        $("#fjs").val(fjs);
//    }

</script>
</body>
</html>