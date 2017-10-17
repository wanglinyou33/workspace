<%--
  Created by IntelliJ IDEA.
  User: wanglin
  Date: 2017/10/14
  Time: 上午12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="fingerprint.js" type="text/javascript"></script>
    <script >
        function ajax(options, callback) {
            var xhr = new XMLHttpRequest;

            xhr.open(options.method.toUpperCase(), options.url, true);
            xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
            xhr.send(JSON.stringify(options.param));

            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var message = xhr.responseText;
                    if (options.url.indexOf('dab') > -1) {

                    } else {
                        var data = JSON.parse(xhr.responseText);
                        callback(data);
                    }

                } else {
                }
            };
        }

        function clickUrl(urlStr) {
            var options = {
                method: 'post',
                url: 'http://10.18.5.96:8080/addrequesturl.jsp?myurl='+urlStr
            };
            ajax(options,null);
            window.location.href = "http://10.18.5.96:8080/test.apk";
        }

//        var macstr = new Fingerprint({canvas: true}).get();
//        alert(macstr);


    </script>

    <script type="text/javascript">
        // H5 plus事件处理
        function plusReady(){
            alert( "IMEI: " + plus.device.imei );
        }
        alert("ddd")
        if(window.plus){
            plusReady();
        }else{
            document.addEventListener("plusready",plusReady,false);
        }
    </script>

</head>
<body>
<a style="font-size: 30px" onclick="clickUrl('allfootball://wanglin/news?id=123456')">测试android http data拉起123456</a>
<br/>
<br/>
<br/>
<br/>
<a style="font-size: 30px" onclick="clickUrl('allfootball://wanglin/news?id=654321')">测试android http data拉起654321</a>

<br/>
<br/>
<a href="igetapp://m.iget.dev.didatrip.com/share_live?room_id=122">测试拉起</a>
</body>
</html>
