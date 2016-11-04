<!--exerciseStart.php
로그인 세션과 현재날짜를 토대로 user_routine_info 테이블의 routine_list_index를 이용하여 exercise_order 테이블의 exercise_order와 exercise_repeat_number 테이블의 number_of_set, number_of_count, exercise_info 테이블의 exercise_name과 exercise_info을 이용하여 현재운동정보와 다음운동 정보를 출력한다.
수행한 운동명과 횟수는 세션에 저장한다.-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script src="/public/js/socket.io.js"></script>
    <script src="/public/jquery-2.2.0/jquery-2.2.0.min.js"></script>
    <script src="/public/jquery-2.2.0/jquery-2.2.0.js"></script>
    <script src="/public/js/jquery-ui.js"></script>
    <script src="/public/js/bootstrap.min.js"></script>
    <link href="/public/css/bootstrap.min.css" rel="stylesheet">

    <script type="text/javascript" src="/public/js/fusioncharts.js"></script>
    <!--<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/fusioncharts.js"></script>-->
    <!--<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js?cacheBust=56"></script>-->

    <link href="/public/css/jquery.counter-analog.css" media="screen" rel="stylesheet" type="text/css"/>
    <script src="/public/js/jquery.counter.js" type="text/javascript"></script>
    <link href="/public/css/flipclock.css" rel="stylesheet">

    <script type="text/javascript">
        <!--
        var unityObjectUrl = "/public/js/UnityObject2.js";
        if (document.location.protocol == 'https:')
            unityObjectUrl = unityObjectUrl.replace("http://", "https://ssl-");
        document.write('<script type="text\/javascript" src="' + unityObjectUrl + '"><\/script>');
        -->
    </script>
    <script type="text/javascript">
        <!--


        var config = {


            width: $("#unityPlayer").width(),
            height: $("#unityPlayer").height(),
            height: 660,
            params: {
                logoimage: "/public/img/logo-j.png",
                progressbarimage: "/public/img/progress-bar-frame.png",
                enableDebugging: "1",
            }

        };

        var u = new UnityObject2(config);

        jQuery(function () {

            var $missingScreen = jQuery("#unityPlayer").find(".missing");
            var $brokenScreen = jQuery("#unityPlayer").find(".broken");
            $missingScreen.hide();
            $brokenScreen.hide();

            u.observeProgress(function (progress) {
                switch (progress.pluginStatus) {
                    case "broken":
                        $brokenScreen.find("a").click(function (e) {
                            e.stopPropagation();
                            e.preventDefault();
                            u.installPlugin();
                            return false;
                        });
                        $brokenScreen.show();
                        break;
                    case "missing":
                        $missingScreen.find("a").click(function (e) {
                            e.stopPropagation();
                            e.preventDefault();
                            u.installPlugin();
                            return false;
                        });
                        $missingScreen.show();
                        break;
                    case "installed":
                        $missingScreen.remove();
                        break;
                    case "first":
                        break;
                }
            });
            u.initPlugin(jQuery("#unityPlayer")[0], "../application/views/exercise_Go/Desktop.unity3d");
        });
        -->
    </script>

    <script src="/public/js/flipclock.min.js"></script>

    <style type="text/css">
        @font-face {
            font-family: bokutachi;
            src: url('../../../public/fonts/bokutachi.otf'); format('truetype');
        }

        <!--
        body {
            font-family: Helvetica, Verdana, Arial, sans-serif;
            height: 940px;

            text-align: center;
        }

        a:link, a:visited {
            color: #000;
        }

        a:active, a:hover {
            color: #666;
        }

        p.header span {
            font-weight: bold;
        }

        div.broken,
        div.missing {
            margin: auto;
            position: relative;
            top: 50%;
            width: 193px;
        }

        div.broken a,
        div.missing a {
            height: 63px;
            position: relative;
            top: -31px;
        }

        div.broken img,
        div.missing img {
            border-width: 0px;
        }

        div.broken {
            display: none;
        }

        div#unityPlayer {

            cursor: default;
            /*         height: 100%;
                     width: 100%;*/
        }

        .set {
            font-size: 30px;
        }

        .part {
            border-radius: 50%;
        }

        #progressbar {
            height: 25px;
            border: solid #ccc 2px;
            box-shadow: 0 1px 2px #fff, 0 -1px 1px #666, inset 0 -1px 1px rgba(0, 0, 0, 0.5), inset 0 1px 1px rgba(255, 255, 255, 0.8);
            -moz-box-shadow: 0 1px 2px #fff, 0 -1px 1px #666, inset 0 -1px 1px rgba(0, 0, 0, 0.5), inset 0 1px 1px rgba(255, 255, 255, 0.8);
            -webkit-box-shadow: 0 1px 2px #fff, 0 -1px 1px #666, inset 0 -1px 1px rgba(0, 0, 0, 0.5), inset 0 1px 1px rgba(255, 255, 255, 0.8);
        }

        #progressbar > div {
            width: 40%; /* Adjust with JavaScript */
            height: 18px;
            background: -moz-linear-gradient(top, #7e95bf 0%, #113448 100%); /* firefox */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #7e95bf), color-stop(100%, #113448));
        }

        [class$="creditgroup"] {
            display: none;
        }
        #progress{
            background: red; /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#8da8af, #cef8ff); /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#8da8af, #cdf8ff); /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#8da8af, #cef8ff); /* For Firefox 3.6 to 15 */
            background: linear-gradient(#8da8af, #ccf6ff); /* Standard syntax */
        }
        #progressbar{
            background: repeating-linear-gradient(
                to right,
                white,
                white 10px,
                darkgray 10px,
                darkgray 20px
            );
        }
        
        body{
            font-family: bokutachi;
        }
    </style>
</head>
<body>


<div class="container-fluid">
    <div class="row" style="margin: auto; margin-bottom: 10px; background-color:#3498db;">
        <div class="col-md-3">
            <div class="row" style="margin: auto">
                <div style="font-family: bockutachi;padding: 0px; float: left;margin-top: 20px;height: 85px">
                    <img src="../../../public/img/exercise/start_logo.png"><span
                        style="font-family: bockutachi;font-size: 40px;color: white">&nbsp; 運動日和</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="row" style="margin: auto">
                <div
                    style="font-family: bockutachi;padding: 1px;margin-top: 25px;height: 85px;text-align: center;"
                    id="information"></div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="row" style="margin: auto; position: relative">
                <!--                    <div style="font-family: bockutachi;height: 80px;padding: 0px;margin-top: 25px;height: 85px"
                                         id="information_set">

                                    </div>-->
                <span style="font-size: 30px; font-family: bockutachi; margin-top: 10px;color: white;height: 85px; position: absolute; top: 20px; left: 5px">セット数:</span><div style="float: right" id="information_set"></div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="row" style="margin: auto; position: relative">

                <!--                    <div style="font-family: bockutachi;height: 80px;padding: 0px;margin-top: 25px;height: 85px"
                                           id="information_count">

                                      </div>-->
                <span style="font-size: 30px; font-family: bockutachi; margin-top: 10px;color: white;height: 85px; position: absolute; top: 20px; left: 55px">回数:</span><div style="float: right" id="information_count"></div>
            </div>
        </div>
    </div>
    <div class="row" style="margin: auto">
        <div class="col-md-8" style="padding-left: 0;padding-right: 10px">
            <div class="row" style="margin: auto">
                <div id="unityPlayer">
                    <div class="missing">
                        <a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now!">
                            <img alt="Unity Web Player. Install now!"
                                 src="http://webplayer.unity3d.com/installation/getunity.png" width="193" height="63"/>
                        </a>
                    </div>
                    <div class="broken">
                        <a href="http://unity3d.com/webplayer/"
                           title="Unity Web Player. Install now! Restart your browser after install.">
                            <img alt="Unity Web Player. Install now! Restart your browser after install."
                                 src="http://webplayer.unity3d.com/installation/getunityrestart.png" width="193"
                                 height="63"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3" style="width: 26%;padding-left: 0;padding-right: 0">
            <div class="row" style="margin: auto">
                <div class="panel panel-success">
                    <div class="panel-body"
                         style="font-family: bockutachi; padding: 0; height: 611px;">
                        <div class="row" style="padding:0; margin: 0;">
                            <div class="col-md-6">
                                <h3 style="margin: 0; margin-top: 20px;">左側三角筋</h3>
                            </div>
                            <div class="col-md-6">
                                <h3 style="margin: 0; margin-top: 20px">右側三角筋</h3>
                            </div>
                        </div>
                        <div class="row" style="padding:0; margin: 0;  border-bottom: 1px solid #d8d8d8; ">
                            <div class="col-md-6" style="padding:0; margin: 0">
                                <canvas id="cvs" width="200" height="280">
                                    [No canvas support]
                                </canvas>
                            </div>
                            <div class="col-md-6" style="padding:0; margin: 0">
                                <canvas id="cvs2" width="200" height="280">
                                    [No canvas support]
                                </canvas>
                            </div>
                        </div>
                        <div class="row" style="position: relative;">
                            <img src="/public/img/muscle/muscle.png"
                                 style="width : 90%;margin-top: 10px; filter: drop-shadow(0px 0px 2px #666666);">

                            <div id="deltoid_left" class="part" style='position: absolute;'></div>
                            <div id="deltoid_right" class="part" style='position: absolute;'></div>
                        </div>
                    </div>
                    <div class="panel-footer" style="padding:1px 1px; background-color: #3498db;color: white">
                        <p style="font-family: bockutachi; font-size: 25px">筋肉センサー</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" id="progress" style="padding-bottom : 5px; padding-right : 20px; margin: auto">
        <p style="margin-left : 10px; font-size : 30px; font-family: bockutachi; text-align: left;">進行率(<span id="percent">0%</span>)</p>

        <div class="row" style="padding: 0">
            <div class="col-md-10 col-md-offset-1" style="padding: 0;">
                <div id="runner" style="width:0%;">
                    <img src="/public/img/exercise/running.gif" style="width:70px; float: right">
                </div>
            </div>
        </div>
        <div class="row" style="padding: 0">
            <div class="col-md-1 col-md-offset-11" style="padding:0; margin-top : -103px">
                <img src="/public/img/exercise/flag.gif" style="width: 80%; float: left">
            </div>
        </div>

        <div class="row" style="padding: 0">
            <div class="col-md-10 col-md-offset-1" style="padding:0; margin-top : -35px">
                <div class="row" style="padding: 0;">
                    <div class="col-md-2" style="padding:0;">
                        <img src="/public/img/exercise/flag.png" style="width: 10%; float: right">
                    </div>
                    <div class="col-md-2" style="padding:0;">
                        <img src="/public/img/exercise/flag.png" style="width: 10%; float: right">
                    </div>
                    <div class="col-md-2" style="padding:0;">
                        <img src="/public/img/exercise/flag.png" style="width: 10%; float: right">
                    </div>
                    <div class="col-md-2" style="padding:0;">
                        <img src="/public/img/exercise/flag.png" style="width: 10%; float: right">
                    </div>
                    <div class="col-md-2" style="padding:0;">
                        <img src="/public/img/exercise/flag.png" style="width: 10%; float: right">
                    </div>
                </div>
                <div class="row" style="padding: 0;">
                    <div id="progressbar" style="background-color: white; padding: 0;">
                        <div id="myBar" style="width:0%; height : 100%"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<script src="/public/js/RGraph.common.core.js"></script>
<script src="/public/js/RGraph.common.effects.js"></script>
<script src="/public/js/RGraph.vprogress.js"></script>
<script>
    var vprogress;
    var vprogress2;
    var UnityLoaded;

    function UnityReady(temp) {
        UnityLoaded = true;
        console.log("Is Unity Loaded? : " + UnityLoaded);
        u.getUnity().SendMessage("CoordinateMapper", "setLang", "jp");
    }
    $(document).ready(function () {

        function makeRandom(min, max){
            var RandVal = Math.random() * (max- min) + min;
            return Math.floor(RandVal);
        }

        // run the currently selected effect
        function runEffect(part) {
            // run the effect
            //console.log("run effect : " + part);
            $(part).show("scale", "percent: 100", 50);

            callback(part);
        }

        //callback function to bring a hidden box back
        function callback(part) {
            setTimeout(function () {
                $(part).hide("scale", "percent: 0", 50);
            }, 300);
        }


        //var socket = io('http://jycom.asuscomm.com:5300');
        var socket = io('http://localhost:3000');
        socket.on('fromserver', function () {
            console.log('socket connected');
            socket.emit('fromclient', 'Hello From WEB');
        });


        /*socket.on('toTest', function(data){
            if(UnityLoaded){
                if(vprogress == null){
                    vprogress = new RGraph.VProgress({
                        id: 'cvs',
                        min: 0,
                        max: 100,
                        value: '89',
                        options: {
                            colors: ['Gradient(green:yellow:red)'],
                            gutterRight:35,
                            textSize: 12,
                            tickmarks: 100,
                            numticks: 20,
                            margin: 5,
                            textAccessible: true
                        }
                    });

                    vprogress2 = new RGraph.VProgress({
                        id: 'cvs2',
                        min: 0,
                        max: 100,
                        value: '89',
                        options: {
                            colors: ['Gradient(green:yellow:red)'],
                            gutterRight:35,
                            textSize: 12,
                            tickmarks: 100,
                            numticks: 20,
                            margin: 5,
                            textAccessible: true
                        }
                    });
                }
                console.log("data");
                vprogress.value = makeRandom(50,makeRandom(70, 95));
                vprogress.grow();

                vprogress2.value = makeRandom(50,makeRandom(60, 99));
                vprogress2.grow();
            }

        });*/

        {
            socket.on('toWeb', function (data) {
                if (UnityLoaded && data != null) {

                    var part_num = parseInt(data.data.toString().substr(0, 4), 2); //1, 2
                    var power = parseInt(data.data.toString().substr(4, 12), 2); // data : 0~1024

                    console.log("data : " + data.data.toString());
                    console.log("part : " + part_num);
                    console.log("power : " + power);
                    // 근육 센서(이미지)
                    if (power != 0) {
                        var part;

                        /*
                         if (part_num == 1) {
                         if (current_ex_name == "Dumbel") {
                         if (power >= 500) {
                         console.log("send Muscle Failed Message to " + current_ex_name);
                         u.getUnity().SendMessage("CoordinateMapper", "muscleFail", "");
                         }
                         }
                         else if (current_ex_name == "Side") {
                         if (power >= 600) {
                         console.log("send Muscle Failed Message to " + current_ex_name);
                         u.getUnity().SendMessage("CoordinateMapper", "muscleFail", "");
                         }
                         }
                         }
                         */
                        if(vprogress == null){
                            vprogress = new RGraph.VProgress({
                                id: 'cvs',
                                min: 0,
                                max: 100,
                                value: '89',
                                options: {
                                    colors: ['Gradient(green:yellow:red)'],
                                    gutterRight:35,
                                    textSize: 12,
                                    tickmarks: 100,
                                    numticks: 20,
                                    margin: 5,
                                    textAccessible: true
                                }
                            });

                            vprogress2 = new RGraph.VProgress({
                                id: 'cvs2',
                                min: 0,
                                max: 100,
                                value: '89',
                                options: {
                                    colors: ['Gradient(green:yellow:red)'],
                                    gutterRight:35,
                                    textSize: 12,
                                    tickmarks: 100,
                                    numticks: 20,
                                    margin: 5,
                                    textAccessible: true
                                }
                            });
                        }

                        /*if (part_num == 1) {
                            part = '#deltoid_left';
                            vprogress.value = power;
                            vprogress.grow();
                        }
                        else if (part_num == 2) {
                            part = '#deltoid_right';
                            vprogress2.value = power;
                            vprogress2.grow();
                        }
                        */

                            part = '#deltoid_left';
                            vprogress.value = power / 10;
                            vprogress.grow();
                            part = '#deltoid_right';
                            vprogress2.value = power / 10;
                            vprogress2.grow();

                        //console.log("part name : " + part);


//                        if (power <= 341) {
//                            $(part).css("width", "16px");
//                            $(part).css("height", "16px");
//                            $(part).css('background-color', '#66b132');
//                            $(part).css("box-shadow", "0px 0px 10px #66b132");
//                        }
//                        else if (power <= 682) {
//                            $(part).css("width", "32px");
//                            $(part).css("height", "32px");
//                            $(part).css('background-color', '#f9bb04');
//                            $(part).css("box-shadow", "0px 0px 10px #f9bb04");
//                        }
//                        else if (power <= 1024) {
//                            $(part).css("width", "48px");
//                            $(part).css("height", "48px");
//                            $(part).css('background-color', '#a8184b');
//                            $(part).css("box-shadow", "0px 0px 10px #a8184b");
//                        }
//
//                        if(part_num == 1 && power <= 341){
//                            $(part).css("top", "26.5%");
//                            $(part).css("left", "23.5%");
//                        }
//                        else if(part_num == 1 && power <= 682){
//                            $(part).css("top", "25.5%");
//                            $(part).css("left", "22.5%");
//                        }
//                        else if(part_num == 1 && power <= 1024){
//                            $(part).css("top", "24%");
//                            $(part).css("left", "21%");
//                        }
//                        else if(part_num == 2 && power <= 341){
//                            $(part).css("top", "21%");
//                            $(part).css("left", "36%");
//                        }
//                        else if(part_num == 2 && power <= 682){
//                            $(part).css("top", "19.5%");
//                            $(part).css("left", "34.5%");
//                        }
//                        else if(part_num == 2 && power <= 1024){
//                            $(part).css("top", "18%");
//                            $(part).css("left", "33%");
//                        }

                        if (power >= 750) {
                            $(part).css("width", "48px");
                            $(part).css("height", "48px");
                            $(part).css('background-color', '#a8184b');
                            $(part).css("box-shadow", "0px 0px 10px #a8184b");
                        }
                        else {
                            $(part).css("width", "32px");
                            $(part).css("height", "32px");
                            $(part).css('background-color', '#f9bb04');
                            $(part).css("box-shadow", "0px 0px 10px #f9bb04");
                        }

                        if (part_num == 1 && power < 750) {
                            $(part).css("top", "55%");
                            $(part).css("left", "18%");
                        }
                        else if (part_num == 1 && power >= 750) {
                            $(part).css("top", "56%");
                            $(part).css("left", "17%");
                        }

                        else if (part_num == 2 && power < 750) {
                            $(part).css("top", "55%");
                            $(part).css("left", "70%");
                        }
                        else if (part_num == 2 && power >= 750) {
                            $(part).css("top", "56%");
                            $(part).css("left", "71%");
                        }
                        runEffect(part);

                        $("#effect").hide();

                    }
                }
            });
        }



    });

</script>
</body>
<script src="/public/js/chart.js"></script>

</html>