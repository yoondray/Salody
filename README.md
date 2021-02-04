# Healthcare at home
대한민국에서 Diet에 대한 관심이 크게 증가했지만 2020년도, COVID-19가 발생하면서 Diet에 대한 관심은 점차 감소하였다.<br> 
그러나 HomeTraining(홈트)에 대한 관심이 증가하면서 이에 대한 정보들을 공유하기 위한<br> 
:white_check_mark: 다이어터들의 새로운 플랫폼
<br>

![Dashboard 1](https://user-images.githubusercontent.com/74237804/106859973-1f26ca80-6707-11eb-9948-fb6a32c30b92.png)

[https://public.tableau.com/profile/yoo.park#!/?newProfile=&activeTab=0](url) by @yoondray 
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
:heavy_check_mark:JQuery활용 - 휴대전화, 주소, 이메일 등 통합
:heavy_check_mark:게시판 MySQL rownum활용
 `select * 
from (
  select @rownum :=@rownum+1 as rownum, b.*
  from (select @rownum:=0) as tmp, tableName as b`
`public class Criteria {
  private int pageNo;
  private int index;
  public Criteria() {
   this(1,10);
  }`
:heavy_check_mark:



