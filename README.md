# Healthcare at home
대한민국에서 Naver 또는 Google에서 Diet 검색량이 점차 증가하고 있다.<br>
사람들이 다이어트, 건강, 홈트레이닝 등에 관심이 생겼고 이에 <br> 
:white_check_mark:정보를 공유하기 위해 만든 다이어터들의 새로운 플랫폼
<br>

![Dashboard 1](https://user-images.githubusercontent.com/74237804/106859973-1f26ca80-6707-11eb-9948-fb6a32c30b92.png)
<br>
source : Naver Data Lab, Google Trends <br>
<div class='tableauPlaceholder' id='viz1612526582482' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;In&#47;IndividualsusingtheInternet2015-2019&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='IndividualsusingtheInternet2015-2019&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;In&#47;IndividualsusingtheInternet2015-2019&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='ko' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1612526582482');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='1000px';vizElement.style.height='827px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='1000px';vizElement.style.height='827px';} else { vizElement.style.width='100%';vizElement.style.height='727px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script><br>

by @yoondray 
<br><br>

## :apple:Team
> Join/Login (java, javascript) @genie8626<br>
> Login (css) @oyaatLee<br>
> Board/Upload (java, json) @yoondray 


##  :computer:Stack
- Front-end : Javascript, CSS
- Back-end : Spring Boot (Java 8), JSON, jstl
- Test : JUnit
- DB : MySQL, Tableau
- raw-data : Naver Data Lab, Google Trends
<br><br>

## :clap:Request Definition
![요구사항 정의서](https://user-images.githubusercontent.com/74237804/106861753-8a719c00-6709-11eb-84a4-1f28ca55052b.jpg)
<br><br>

## :speech_balloon:Main Display
![Salody display](https://user-images.githubusercontent.com/74237804/106861371-05868280-6709-11eb-9dea-8183eb46089e.jpg)

- [메인] : 홍보게시글, 이벤트, 트렌드 등 기능
- [회원가입] : 회원정보 입력 기능
- [로그인] : 회원가입 된 회원들만 로그인 가능한 기능
- [게시판] : 게시판 글쓰기, 수정, 삭제, 댓글쓰기, 사진올리기 등의 기능
<br><br>

### :hammer:**Main Function**
<br>
:heavy_check_mark:기존의 JDBC(Java Database Connectivity)의 한계를 해결하기위해 Mybatis방식으로 개선<br>
:heavy_check_mark:JQuery활용 - 휴대전화, 주소, 이메일 등 통합<br>
:heavy_check_mark:게시판 MySQL rownum활용<br>
:heavy_check_mark: Ajax(동기식 활용-웹브라우저로 데이터 전달)<br>





