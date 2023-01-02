

<html>

<head>
        <title>여행을 떠나요 ✈</title>
        <link rel = "stylesheet" href = "button.css">

        <script>
            window.onload = function() {
                document.getElementById('frm_submit').onclick = function() {
                    let obj = document.getElementsByName('form')[0];
                    obj.method = "get";

                    // 그래프
                    obj.action = "travel_plot.php";
                    obj.target = "plot";
                    obj.submit();

                    // 표
                    obj.action = 'travel_df.php';
                    obj.target = "df";
                    obj.submit();

                    return false;
                }
            }
        </script>
</head>

<body>
    <script>
        const urls = [];
            urls['서울'] = "https://www.youtube.com/embed/vDW2zytBPh0?autoplay=1&mute=1";
            urls['부산'] = "https://www.youtube.com/embed/q2NEYjYHSNE?autoplay=1&mute=1";
            urls['대구'] = "https://www.youtube.com/embed/VSEjFnyLBv4?autoplay=1&mute=1";
            urls['인천'] = "https://www.youtube.com/embed/S7s94EzCYgI?autoplay=1&mute=1";
            urls['광주'] = "https://www.youtube.com/embed/3y6w9sP0MZQ?autoplay=1&mute=1";
            urls['대전'] = "https://www.youtube.com/embed/Y5byrq2zPYg?autoplay=1&mute=1";
            urls['울산'] = "https://www.youtube.com/embed/MLjKjTedyVQ?autoplay=1&mute=1";
            urls['세종'] = "https://www.youtube.com/embed/nTKzEU46LAk?autoplay=1&mute=1";
            urls['경기'] = "https://www.youtube.com/embed/sNT8siMzhQc?autoplay=1&mute=1";
            urls['강원'] = "https://www.youtube.com/embed/J92PJiVry_k?autoplay=1&mute=1";
            urls['충청북도'] = "https://www.youtube.com/embed/NVz7rZ8wo5o?autoplay=1&mute=1";
            urls['충청남도'] = "https://www.youtube.com/embed/gOGH6NdWALY?autoplay=1&mute=1";
            urls['전라북도'] = "https://www.youtube.com/embed/dKHdUFv1k_g?autoplay=1&mute=1";
            urls['전라남도'] = "https://www.youtube.com/embed/dThKwyphxq4?autoplay=1&mute=1";
            urls['경상북도'] = "https://www.youtube.com/embed/gXbfBEO5ldM?autoplay=1&mute=1";
            urls['경상남도'] = "https://www.youtube.com/embed/HX5I4Sc2NwY?autoplay=1&mute=1";
            urls['제주'] = "https://www.youtube.com/embed/1vBB_XO5tDM?autoplay=1&mute=1";

        const urls2 = [];
            urls2['서울'] = "https://forecast.io/embed/#lat=37.5266&lon=127.0403&name=Seoul, 서울&color=#F9F0C1&font=&units=si";
            urls2['부산'] = "https://forecast.io/embed/#lat=35.1334&lon=129.1058&name=부산&color=#F9F0C1&font=&units=si";
            urls2['대구'] = "https://forecast.io/embed/#lat=35.8759&lon=128.5964&name=Daegu, 대구&color=#F9F0C1&font=&units=si";
            urls2['인천'] = "https://forecast.io/embed/#lat=37.4496&lon=126.7074&name=Incheon, 인천&color=#F9F0C1&font=&units=si";
            urls2['광주'] = "https://forecast.io/embed/#lat=35.1787&lon=126.8974&name=Gwangju, 광주(전남)&color=#F9F0C1&font=&units=si";
            urls2['대전'] = "https://forecast.io/embed/#lat=36.3512&lon=127.3954&name=Daejeon, 대전&color=#F9F0C1&font=&units=si";
            urls2['울산'] = "https://forecast.io/embed/#lat=35.538&lon=129.324&name=울산&color=#F9F0C1&font=&units=si";
            urls2['세종'] = "https://forecast.io/embed/#lat=36.488&lon=127.2823&name=%EC%84%B8%EC%A2%85&color=#F9F0C1&font=&units=si";
            urls2['경기'] = "https://forecast.io/embed/#lat=37.2842&lon=127.0192&name=%EC%88%98%EC%9B%90&color=#F9F0C1&font=&units=si";
            urls2['강원'] = "https://forecast.io/embed/#lat=37.3488&lon=127.9538&name=%EC%9B%90%EC%A3%BC&color=#F9F0C1&font=&units=si";
            urls2['충청북도'] = "https://forecast.io/embed/#lat=36.6387&lon=127.499&name=%EC%B2%AD%EC%A3%BC&color=#F9F0C1&font=&units=si";
            urls2['충청남도'] = "https://forecast.io/embed/#lat=36.2299&lon=126.659&name=%EB%B3%B4%EB%A0%B9&color=#F9F0C1&font=&units=si";
            urls2['전라북도'] = "https://forecast.io/embed/#lat=35.8256&lon=127.1418&name=%EC%A0%84%EC%A3%BC&color=#F9F0C1&font=&units=si";
            urls2['전라남도'] = "https://forecast.io/embed/#lat=34.74&lon=127.7362&name=%EC%97%AC%EC%88%98&color=#F9F0C1&font=&units=si";
            urls2['경상북도'] = "https://forecast.io/embed/#lat=36.0374&lon=129.3749/&name=%ED%8F%AC%ED%95%AD&color=#F9F0C1&font=&units=si";
            urls2['경상남도'] = "https://forecast.io/embed/#lat=34.8559&lon=128.6015/&name=%EA%B1%B0%EC%A0%9C&color=#F9F0C1&font=&units=si";
            urls2['제주'] = "https://forecast.io/embed/#lat=33.5117&lon=126.5219&name=%EC%A0%9C%EC%A3%BC&color=#F9F0C1&font=&units=si";

            
            
        var cnt = new Array();
            cnt[0] = new Array('전체');
            cnt[1] = new Array('전체');
            cnt[2] = new Array('전체');
            cnt[3] = new Array('전체');
            cnt[4] = new Array('전체');
            cnt[5] = new Array('전체');
            cnt[6] = new Array('전체');
            cnt[7] = new Array('전체');
            cnt[8] = new Array('전체');
            cnt[9] = new Array('전체','수원시', '고양시', '용인시', '성남시', '부천시', '화성시', '안산시', '남양주시', '안양시', '평택시', '시흥시', '파주시', '의정부시',
                            '김포시', '광주시', '광명시', '군포시', '하남시', '오산시', '양주시', '이천시', '구리시', '안성시', '포천시', '의왕시', '여주시', '동두천시', '과천시');
            cnt[10] = new Array('전체','춘천시', '원주시', '강릉시', '동해시', '태백시', '속초시', '삼척시');
            cnt[11] = new Array('전체','제천시','청주시','충주시');
            cnt[12] = new Array('전체','공주시','보령시','서산시','아산시','천안시');
            cnt[13] = new Array('전체','군산시','김제시','남원시','익산시','전주시','정읍시');
            cnt[14] = new Array('전체','광양시','나주시','목포시','순천시','여수시','여천시');
            cnt[15] = new Array('전체','경산시','경주시','구미시','김천시','문겅시','상주시','안동시','영주시','영천시','포항시');
            cnt[16] = new Array('전체','거제시','김해시','마산시','밀양시','사천시','울산시','진주시','진해시','창원시','통영시');
            cnt[17] = new Array('전체','서귀포시','제주시');
            function change(add) {
            sel=document.form.sido
            /* 옵션메뉴삭제 */
            for (i=sel.length-1; i>=0; i--){
                sel.options[i] = null
                }
            /* 옵션박스추가 */
            for (i=0; i < cnt[add].length;i++){
                sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
                }         
            }
            
    </script>

    <form name = "form">
        시/도:
        <select name = 'city'   class = 'input'>
            <option value = '전체'>전체</option>
            <option value = '서울'>서울특별시</option>
            <option value = '부산'>부산광역시</option>
            <option value = '대구'>대구광역시</option>
            <option value = '인천'>인천광역시</option>
            <option value = '광주'>광주광역시</option>
            <option value = '대전'>대전광역시</option>
            <option value = '울산'>울산광역시</option>
            <option value = '세종'>세종특별자치시</option>
            <option value = '경기'>경기도</option>
            <option value = '강원'>강원도</option>
            <option value = '충청북도'>충청북도</option>
            <option value = '충청남도'>충청남도</option>
            <option value = '전라북도'>전라북도</option>
            <option value = '전라남도'>전라남도</option>
            <option value = '경상북도'>경상북도</option>
            <option value = '경상남도'>경상남도</option>
            <option value = '제주'>제주도</option>
        </select>                                                  
        
        시: 
        <select name = 'sido'  class = select>
            <option value = ''>전체</option>
        </select>
        <input id = 'frm_submit' type = 'button' value = '제출'>
    </form>

        <script>
            document.getElementsByName("city")[0].onchange = function() {
                var url = document.getElementsByName("city")[0].value;
    
                change(this.selectedIndex);
    
                document.getElementsByName("you")[0].src = urls[url];
                document.getElementsByName('wea')[0].src = urls2[url];
            }

            // document.getElementsByName('sido')[0].onchange = function() {
            //    let obj = document.getElementsByName('form')[0];
            //    obj.submit();
            // }
        </script>

        <iframe name = "you" width = "1000" height = "300" src = "" title = "YouTube video player" frameborder = "0" allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen align = "left"></iframe>
        <iframe name = "wea" width = "1050" height = "230" src = "" frameborder = "0" align = "right"></iframe>
        <iframe name = "dd1" width = "1050" height = "20" src = "" frameborder = "0" align = "right"></iframe>
        <iframe name = "map" width = "1000" height = "600" src = "map_final.html" frameborder = "0" align = "right" scrolling="no"></iframe>
        <iframe name = "plot" width = "1000" height = "200" frameborder = "0" align = "left"></iframe>
        <iframe name = "df" width = "1000" height = "400" frameborder = "0" align = "left"></iframe>
        <iframe name = "dd" width = "1050" height = "20" frameborder = "0" align = "right"></iframe>
    
        <div class = "btn-group">
            <button onclick = "window.open('https://www.letskorail.com/ebizprd/prdMain.do') ">코레일</button>
            <button onclick = "window.open('https://etk.srail.kr/main.do') ">SRT</button>
            <button onclick = "window.open('https://www.bustago.or.kr/newweb/kr/index.do') ">시외버스</button>
            <button onclick = "window.open('https://www.kobus.co.kr/main.do') ">고속버스</button>
        </div>

    </body>
        

</html>