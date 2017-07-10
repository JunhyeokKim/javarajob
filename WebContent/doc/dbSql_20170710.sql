CREATE TABLE ACCOUNT
(
   NAME       VARCHAR2 (50),
   ID         VARCHAR2 (50),
   PASSWORD   VARCHAR2 (50),
   EMAIL      VARCHAR2 (50),
   PHONE      VARCHAR2 (50),
   ADDRESS    VARCHAR2 (50),
   INTEREST   VARCHAR2 (50),
   REGDATE    DATE
)
NOCACHE
LOGGING;



CREATE TABLE APPLIEDCAREER
(
   NO         NUMBER,
   USERID     VARCHAR2 (50),
   CAREERID   NUMBER
)
NOCACHE
LOGGING;

CREATE TABLE BOARD
(
   NO          NUMBER,
   REFNO       NUMBER,
   SUBJECT     VARCHAR2 (100),
   CONTENT     VARCHAR2 (1000),
   PASS        VARCHAR2 (50),
   WRITER      VARCHAR2 (50),
   READCOUNT   NUMBER,
   REGDATE     DATE,
   EMAIL       VARCHAR2 (100),
   COMPANYID   NUMBER
)
NOCACHE
LOGGING;




CREATE TABLE CAREER
(
   CAREERID           NUMBER,
   COMPANYTYPE        NUMBER,
   FIELD              NUMBER,
   LOCATION           NUMBER,
   INDUSTRY           NUMBER,
   EMPLOYMENTTYPE     NUMBER,
   COMPANYID          NUMBER,
   TITLE              VARCHAR2 (100),
   SALARY             NUMBER,
   TASK               VARCHAR2 (4000),
   REQUIREMENTS       VARCHAR2 (4000),
   PREFERENCE         VARCHAR2 (4000),
   WORKINGCONDITION   VARCHAR2 (4000),
   POSTDATE           DATE,
   ENDDATE            DATE,
   BOOKMARKCNT        NUMBER
)
NOCACHE
LOGGING;



CREATE TABLE COMPANY
(
   COMPANYID           NUMBER,
   TEL                 VARCHAR2 (200),
   LOCATION            VARCHAR2 (200),
   ESTABLISHMENTDATE   DATE,
   ANNUALSALES         NUMBER,
   INDUSTRY            NUMBER,
   COMPANYTYPE         NUMBER,
   WEBSITE             VARCHAR2 (100),
   COMPANYSIZE         NUMBER,
   INFO                VARCHAR2 (3000),
   COMPANYNAME         VARCHAR2 (200),
   SHORTINFO           VARCHAR2 (50),
   BOOKMARKCNT         NUMBER,
   IMAGEURL            VARCHAR2 (500)
)
NOCACHE
LOGGING;



CREATE TABLE FAVCAREER
(
   CAREERID   NUMBER,
   ID         VARCHAR2 (50)
)
NOCACHE
LOGGING;

CREATE TABLE FAVCOMPANY
(
   COMPANYID   NUMBER,
   ID          VARCHAR2 (50)
)
NOCACHE
LOGGING;

CREATE TABLE RESUME
(
   USERID          VARCHAR2 (30),
   NAME            VARCHAR2 (30),
   BIRTHYEAR       VARCHAR2 (10),
   BIRTHMON        VARCHAR2 (10),
   BIRTHDAY        VARCHAR2 (10),
   GENDER          VARCHAR2 (10),
   HTEL            VARCHAR2 (50),
   CTEL            VARCHAR2 (50),
   EMAIL           VARCHAR2 (60),
   SNS             VARCHAR2 (100),
   ADDRESS         VARCHAR2 (200),
   HIGHINIYEAR     VARCHAR2 (10),
   HIGHINIMON      VARCHAR2 (10),
   HIGHFINYEAR     VARCHAR2 (10),
   HIGHFINMON      VARCHAR2 (10),
   HIGHNAME        VARCHAR2 (50),
   HIGHKIND        VARCHAR2 (20),
   UNIVINIYEAR     VARCHAR2 (10),
   UNIVINIMON      VARCHAR2 (10),
   UNIVFINYEAR     VARCHAR2 (10),
   UNIVFINMON      VARCHAR2 (10),
   UNIVNAME        VARCHAR2 (50),
   UNIVKIND        VARCHAR2 (20),
   UNIVSCORE       VARCHAR2 (10),
   UNIVMAJOR       VARCHAR2 (50),
   GRADUINIYEAR    VARCHAR2 (10),
   GRADUINIMON     VARCHAR2 (10),
   GRADUFINYEAR    VARCHAR2 (10),
   GRADUFINMON     VARCHAR2 (10),
   GRADUNAME       VARCHAR2 (50),
   GRADUKIND       VARCHAR2 (30),
   GRADUSCORE      VARCHAR2 (10),
   GRADUMAJOR      VARCHAR2 (50),
   LICENNAME       VARCHAR2 (100),
   LICENINSTI      VARCHAR2 (100),
   LICENGRAD       VARCHAR2 (100),
   JOBNAME         VARCHAR2 (200),
   JOBINIYEAR      VARCHAR2 (10),
   JOBINIMON       VARCHAR2 (10),
   JOBFINYEAR      VARCHAR2 (10),
   JOBFINMON       VARCHAR2 (10),
   JOBRANK         VARCHAR2 (200),
   JOBDEPT         VARCHAR2 (200),
   JOBCONTENT      VARCHAR2 (4000),
   JOBFIRE         VARCHAR2 (4000),
   LANGNAME        VARCHAR2 (100),
   LANGTEST        VARCHAR2 (100),
   LANGSCORE       VARCHAR2 (100),
   LANGDATEYEAR    VARCHAR2 (10),
   LANGDATEMON     VARCHAR2 (10),
   LANGDATEDAY     VARCHAR2 (10),
   AWARDNAME       VARCHAR2 (200),
   AWARDCONTENT    VARCHAR2 (4000),
   AWARDINSTI      VARCHAR2 (200),
   AWARDDATEYEAR   VARCHAR2 (10),
   AWARDDATEMON    VARCHAR2 (10),
   AWARDDATEDAY    VARCHAR2 (10),
   ABROADNATION    VARCHAR2 (200),
   ABROADINSTI     VARCHAR2 (200),
   ABROADCONT      VARCHAR2 (4000),
   VETE            VARCHAR2 (10),
   HANDI           VARCHAR2 (10),
   MILIT           VARCHAR2 (10),
   MILITINIYEAR    VARCHAR2 (10),
   MILITINIMON     VARCHAR2 (10),
   MILITFINYEAR    VARCHAR2 (10),
   MILITFINMON     VARCHAR2 (10),
   MILITKIND       VARCHAR2 (100),
   MILITRANK       VARCHAR2 (100),
   PICNAME         VARCHAR2 (100)
)
NOCACHE
LOGGING;

CREATE TABLE SELFDOCUMENT
(
   USERID     VARCHAR2 (200),
   FILENAME   VARCHAR2 (500),
   REGDATE    DATE,
   EXT        VARCHAR2 (20)
)
NOCACHE
LOGGING;

CREATE SEQUENCE BOARD_SEQ START WITH 1
                          INCREMENT BY 1
                          MAXVALUE 999999
                          NOMINVALUE
                          NOORDER
                          NOCYCLE
                          CACHE 20;

INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  44,
                  '-',
                  'Rakuten Crimson House, 1-14-1 Tamagawa Setagaya-ku, Tokyo, Japan, 158-0094',
                  TO_DATE ('02/07/1997 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  71000,
                  3,
                  6,
                  'http://global.rakuten.com/corp/',
                  12981,
                  '라쿠텐은 인터넷 서비스 기업으로써 세계 최고를 목표로 인터넷을 통하여 사람과 사회에 공헌하고자 하는 이념 아래, 다양한 서비스를 개발, 제공해왔습니다.
라쿠텐 시장 및 라쿠텐 트래블과 같은 e커머스뿐만 아니라, 전자서적, 은행, 증권, 신용카드, 프로 스포츠 외 전세계 9억명의 유저를 보유하고 있는 메세지 서비스인 Viber 등 다방면으로 서비스를 제공하고 있습니다.
Are you interested in building the next generation of Internet services that touch hundreds of millions of users across the globe every day:var1
Rakuten is one of the leading e-commerce companies in the world aiming at being a global innovation company.
'                  ,
                  '라쿠텐',
                  '라쿠텐입니다',
                  5,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/91385/thumb_CorporateLogo.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  45,
                  '-',
                  '경기 성남시 분당구 황새울로360번길 42 (서현동,AK플라자)',
                  TO_DATE ('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  2900,
                  3,
                  3,
                  'http://linepluscorp.com/',
                  760,
                  'LINE은 2011년 6월 첫 출시 후 3년 만에 전 세계 사용자 5억 명이 함께 쓰는 명실상부한 글로벌 서비스로 성장했습니다. 
현재 LINE은 17개 언어로 서비스되고 있으며, LINE의 서비스를 제공받는 국가의 수는 230개에 이릅니다.
일반적인 모바일 메신저를 넘어 전 세계 모든 사용자들이 일상생활 곳곳에서 친근하고 편리하게 사용할 수 있는 모바일 플랫폼을 제공하기 위해, 오늘도 LINE의 직원들은 세계 곳곳을 누비며 가슴 뛰는 도전을 펼치고 있습니다. ',
                  '라인플러스(주)',
                  '글로벌 메신저 라인',
                  2,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/89255/thumb_%EB%9D%BC%EC%9D%B8%EB%A1%9C%EA%B3%A0.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  46,
                  '-',
                  '서울 강남구 테헤란로 203 (역삼동,서울인터내셔널타워)',
                  TO_DATE ('07/01/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  175000,
                  2,
                  1,
                  'https://www.mobis.co.kr',
                  7612,
                  '현대모비스(주) 및 종속기업은 자동차 3대 핵심모듈인 샤시모듈, 칵핏모듈, 프론트엔드모듈을 생산하여 계열사에 공급하는 모듈사업과 국내외에서 운행 중인 모든 현대차 및 기아차에 소요되는 보수용부품을 공급하는 부품사업을 영위. 모듈사업은 완성차의 생산대수에 연동되기 때문에 경기변동과 계열사의 업황에 따라 매출증감이 발생하게 되며, 부품사업은 현대차 및 기아차의 운행대수에 영향을 받음. 현재 강점을 가지고 있는 모듈 및 부품제조 및 A/S용 부품사업은 계속 유지하면서 전장부문을 강화해 사업 포트폴리오 다변화를 꾀함과 동시에 전장 및 안전제품 등 관련 핵심부품 사업을 확대할 계획임',
                  '현대모비스(주)',
                  ' 2015 년 글로벌 자동차 부품업계 6위',
                  0,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/1415/thumb_105.jpg');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  5,
                  '02-334-1154',
                  '서울 강남구 역삼동 736-1 캐피탈타워',
                  TO_DATE ('12/06/2010 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  3000,
                  3,
                  6,
                  'http://newsroom.fb.com/company-info/',
                  420,
                  '페이스북코리아는 더욱 열리고 연결된 세상을 만든다는 사명 아래 매년 빠르게 성장하고 있습니다.
자유로운 분위기에서 변화를 주도하고, 여러 사람들과의 협력을 통해 큰 그림을 만들어 갈 수 있는 분들의 지원을 기다립니다.',
                  '페이스북코리아(유)',
                  '킹갓제네럴 페이스북입니다',
                  7,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/90364/thumb_______.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  42,
                  '-',
                  '서울 강남구 역삼1동 737 강남파이낸스센터 22층',
                  TO_DATE ('03/15/2004 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  1000,
                  3,
                  2,
                  'www.google.co.kr',
                  100,
                  '구글코리아(유)는 사랑입니다.',
                  '구글코리아(유)',
                  '글로벌 검색 portal',
                  5,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/44566/thumb______.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  43,
                  '-',
                  '강원 춘천시 남산면 버들1길 130 (수동리,영빈관)',
                  TO_DATE ('08/20/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  1281.2,
                  3,
                  1,
                  'www.duzon.co.kr',
                  629,
                  '기업정보화 선도기업인 더존은 정보화에 필요한 각종 Solution과 Service를 제공하는
대한민국 대표 ICT기업으로 고객의 경쟁력 강화에 기여해 왔습니다.
더존의 미래를 향한 새로운 도약은 오늘도 계속되고 있습니다.',
                  '더존비즈온(주)',
                  '대한민국 대표 ICT 기업 더존',
                  5,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/81407/thumb_81407.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  2,
                  '010-1234-5678',
                  '서울 구로구 구로3동 811 코오롱싸이언스밸리2차 1314호,1315호',
                  TO_DATE ('06/20/2017 19:19:45', 'MM/DD/YYYY HH24:MI:SS'),
                  30000000,
                  3,
                  2,
                  ' www.wein.co.kr',
                  40,
                  '웨인테크놀로지는 킹왕짱입니다',
                  '(주)웹테크놀로지',
                  '어딘지 모를 웨인테크놀로지',
                  19,
                  ' ');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  4,
                  '010-3333-4444',
                  '서울 송파구 석촌호수로 220 (석촌동,보정빌딩)',
                  TO_DATE ('03/10/2011 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  107,
                  3,
                  2,
                  ' www.baemin.co.kr',
                  285,
                  '(주)우아한형제들은 업계최초 1,000만 다운로드를 기록중이며 전국 13만개 이상의 업소들이 이용하고 있는 대한민국 1등 배달 앱인 ‘배달의민족’을 아이폰, 안드로이드, 태블릿, 윈도우폰, 스마트TV등에 서비스하고 있는 스마트한 스타트업 기업입니다.
우아한형제들에는 재치와 유머 그리고 능력과 열정으로 가득 찬 젊은 사람들이 우아하게 일하고 있으며, 미국 실리콘벨리에서도 우아한형제들의 그 능력을 인정받아 투자를 유치한 HOT!한 기업입니다. ',
                  '(주)우아한형제들',
                  '배민 자주 시켜드세요',
                  9,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/61420/thumb_________2.jpg');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  23,
                  '-',
                  '서울 강남구 강남대로 624 ICT타워 15층',
                  TO_DATE ('06/01/2011 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  -1,
                  3,
                  6,
                  'http://www.riotgames.com',
                  -1,
                  '"게이머에 의한, 게이머를 위한 회사"
TV보기를 좋아하지 않는 사람이 TV프로그램을 만들 수 있을까요:var1 게임을 좋아하지 않는데 게이머의 마음을 이해할 수 있을까요:var2 2006년 게임을 사랑하는 두 청년에 의해 설립된 라이엇게임즈는 게이머여야 게이머를 이해할 수 있다고 믿습니다. 우리는 모두 실력있는 게이머들입니다. 게이머를 가장 중심에 두며, 한국 게이머들에게 최고의 게임경험을 선사하고자 여기 모였습니다.
　
"우리는 이미 게임으로 세상을 바꾸고 있습니다."
당신에게 게임은 무엇인가요:var1 저희에게 게임은 하나의 ’문화’이며 ‘스포츠’입니다. 2009년 출시된 리그 오브 레전드(League of Legends)는 매달 6천 7백만명이 플레이하는 게임이며 전세계 총 145개국에서 이 게임에 접속합니다. 세계적으로 유수의 기업들이 지원하는 프로게임팀은 소위 ‘롤드컵’이라 불리는 세계대회에서 매년 우승컵을 두고 겨룹니다. 지난 해 전 세계에서 롤드컵을 지켜본 누적 시청자수는 3억 3,400만명으로, 미국 슈퍼볼 결승전 시청자수 1억 1,200만명을 능가합니다. 리그 오브 레전드가 만들어 나가는 e스포츠와 게임기록은 이전 세상에는 없던 것입니다. 우리는 게임의 역사를 새롭게 쓰고 있습니다.
　
"만족하며 다니는 회사"
라이엇게임즈와 리그 오브 레전드를 잘 모르신다면, 일하기 좋은 기업으로 소개드리고 싶습니다. 포춘지 선정 가장 일하기 좋은 100개 기업 중 13위, 글래스도어 선정 50개 기업 중 18위, 비즈니스 인사이더가 조사한 직원들이 일하기 좋기로 뽑은 Top 25 테크기업 중 4위. 업계 최고를 지향하는 다양한 복지 프로그램과 자율적인 사내문화는 누구나 다니면서 만족할 만하다고 자부합니다.
'                  ,
                  '라이엇게임즈코리아',
                  '롤을 좋아하는 사람들의 모임',
                  0,
                  ' https://jpassets.jobplanet.co.kr/production/uploads/company/logo/89723/thumb_______.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  25,
                  '-',
                  '서울 강남구 논현로 650-1, 4층 (논현동,히아빌딩)',
                  TO_DATE ('10/06/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  64,
                  4,
                  5,
                  'http://www.consumerinsight.co.kr',
                  43,
                  '컨슈머인사이트(주)의 전 직원 현 직원들이 작성한 7개 기업리뷰, 11개 연봉정보와 구직자들에 의해 제출된 4개 면접후기, 실시간 6개 채용과 뉴스 등을 확인하세요.',
                  '컨슈머인사이트(주)',
                  '컨슈머를 위한 컨슈머인사이트입니다',
                  8,
                  ' ');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  26,
                  '-',
                  '서울 강남구 영동대로 502',
                  TO_DATE ('05/28/2010 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  2165,
                  9,
                  2,
                  'www.wemakeprice.com',
                  1200,
                  '집요하게 고객만족 오직 한 가지에만 멈춤 없이 집착합니다.
어떻게 하면 고객만족이 가능할지, 그것이 무엇보다 궁금하고, 그 해법을 찾기 위해 노력합니다.
수단이 아닌 궁극적 목적으로서, 진심으로 고객만족을 실현하는 것이 위메프의 사명이요, 존재 이유입니다. 

고객이 가야 할 곳, 그 고객의 기대치가 목표로 삼는 최소한의 Standard입니다.
고객이 원하는 것에서 모든 것이 출발하고, 그것을 할 수 있는 방법을 찾는 것이 우리가 일하는 방식입니다.
고객이 원하는 것을 할 수 있도록 과감하게 기존의 방식을 버리면서 새로운 방법을 찾고,
현재의 효율을 유지하는 것을 우선으로 하는 것이 아니라 고객이 원하는 것을 먼저하고 그 다음에 효율을 개선합니다.
또한 고객만족기여도가 직원과 조직의 평가・보상의 기준이 될 수 있도록 회사의 인프라를 구축합니다.',
                  '위메프(주)',
                  '위메이크프라이스',
                  8,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/60632/thumb_12096087_998812996826517_8429599200970923771_n.png');INSERT INTO COMPANY (COMPANYID,
                     TEL,
                     HEADQUARTER,
                     ESTABLISHMENTDATE,
                     ANNUALSALES,
                     INDUSTRY,
                     COMPANYTYPE,
                     WEBSITE,
                     COMPANYSIZE,
                     INFO,
                     COMPANYNAME,
                     SHORTINFO,
                     BOOKMARKCNT,
                     IMAGEURL)
        VALUES (
                  27,
                  '-',
                  '경기도 성남시 분당구 정자일로 45 티맥스타워',
                  TO_DATE ('06/04/1997 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  710,
                  3,
                  2,
                  'www.tmax.co.kr',
                  358,
                  '▶ 중소기업청 : 취업하고싶은 기업 선정 
▶ 잡플래닛 : 평가 우수기업 선정 
　
소프트웨어 산업은 인적 자본 기반의 고부가가치 산업으로, 대한민국 경제의 새로운 미래를 열어갈 중요한 전략사업입니다.
　　
지난 1997년 설립된 티맥스소프트는 순수 국내 기술로 개발한 시스템 소프트웨어를 통해 시장을 독점하고 있던 글로벌 대형 소프트웨어 기업들과 치열하게 경쟁하며 한국 소프트웨어 기술력의 자존심을 지켜 오고 있습니다.
　
티맥스소프트는 2003년 IBM, 오라클 등 글로벌 기업들을 제치고 국내 웹 어플리케이션 서버(WAS) 시장점유율 1위에 올라선 이후, 현재까지 독보적인 1위를 차지하고 있는 ‘제우스(JEUS)’를 비롯해, 데이터베이스 관리 솔루션(TIBERO Data), 애플리케이션 프레임워크(ProFrame), 메인프레임 리호스팅 솔루션(OpenFrame) 등 다수의 경쟁력 있는 솔루션들을 성공적으로 시장에 선보이며 한국을 대표하는 유일한 시스템 소프트웨어 전문기업으로 성장했습니다.
　
지난 17년간 꾸준한 R&D를 통해 개발한 최고의 제품과 차별화된 기술 서비스로 대한민국을 넘어 미국, 중국, 일본 등 전세계를 향한 소프트웨어 강국 코리아를 건설하겠습니다. 나아가 창의적 혁신을 통한 우리의 기술을 바탕으로, 세계를 주름잡는 소프트웨어 기업으로 우뚝 서 세계 소프트웨어의 지평을 열 것입니다.',
                  '(주)티맥스소프트',
                  '(주)티맥스소프트입니다',
                  2,
                  'https://jpassets.jobplanet.co.kr/production/uploads/company/logo/50992/thumb_____46.jpg');COMMIT;


INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  44,
                  6,
                  16,
                  19,
                  3,
                  1,
                  44,
                  'QA 테스트 엔지니어 - QA Automation Engineer',
                  99,
                  '-라쿠텐에서는 QA 테스트 엔지니어 - QA Test Automation Engineer를 모집하고 있습니다. 

-소프트웨어 프로젝트의 기능/성능 및 보안 요건을 분석하고 그에 맞추어 시스템을 개발하며 자동화 업무를 담당합니다. 
해당 프로젝트는 테스트 자동화 및 테스트 스트립트 작성을 포함합니다. 
또한 프로젝트의 릴리즈 이전의 모든 소프트웨어와 게이트웨이 통합 및 하드웨어 테스트 업무를 담당합니다. 

-Rakuten MPD (Marketing Platform Development Department) is currently seeking a full-time QA Test Automation Engineer to join our development team. 
MPD is specializing in products for internet advertising platforms. 

-Analyze, create and automate a software project’s functional, performance and security requirements.  This includes the creation of automation plans and test scripts.   
Responsible for the execution of software, gateway integration and hardware testing prior to release per projects assigned.  Responsible for the design of test plans and automated tests to support continuous software development.',
                  '- 필수자격요건: 
- 컴퓨터공학 및 관련 전공 학사이상 보유 
- 최소 3-5년간의 QA테스트 자동화 경험 
- HTML 및 XML 경험 
- 크로스 브라우저 개발 경험 (HTML, CSS, JavaScript, AJAX, JSON, Browerstack) 
- 실제유저와 PM사이에서의 여러가지 요구사항을 실제 테스트 계획에 반영 가능한 자',
                  '-우대기술·경력: 
- 컴퓨터공학, 정보시스템, 컴퓨터 엔지니어링, 수학/통계 등의 전공자 혹은 관련경험 보유자
- Selenium, Cucumber 유경험자 
- Software Development LifeCycle 지식 보유자 
- 애자일 스크럼 TTD 경험 
- Java/PHP 웹개발 경험 (MVC) 
- MySQL, Oracle, KVS 경험자 
- 실제유저와 PM사이에서의 여러가지 요구사항을 실제 테스트 계획에 반영 가능한 자 
- 높은 커뮤니케이션 스킬 
- 글로벌 환경에서의 뛰어난 적응 능력 보유자 
- 일본어 가능자 
'                  ,
                  '-각종 사회보험 제공 (후생 연금보험, 건강보험, 산재보험, 고용보험) 
-통근 교통비 제공 
-보너스 연 2회 
-스톡옵션 
-사원 지주회 
-비자취득 지원 
-해외부임자 생활지원 
-일본어/영어 수업 지원 

-카페테리아 식당 (아침, 점심, 저녁 전부 무료) 
-라이브러리 (개인학습공간) 
-편의점 (Rakuten Crimson Store 유료) 
-사내 헬스장 (Rakuten Fitness Club & Spa 부분유료) 
-미용실 (Rakuten Salon 유료) 
-세탁소 (Rakuten Cleaning 유료) 
-클리닉 (Rakuten Clinic 유료) 
-마사지&침 (HARI-UP 유료) 
-어린이집 (Rakuten Golden Kids 부분유료)',
                  TO_DATE ('07/05/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('10/11/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  6);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  46,
                  3,
                  6,
                  2,
                  3,
                  1,
                  45,
                  '결제담당 Java 서버/웹 개발 경력 3년이상',
                  99,
                  '- 결제 인터페이스 개발 
- 운영 시스템 개발 
- 외부 금융기관, 머천트 연동 개발',
                  '- 금융권 SI, PG 등에서 같은 곳에서 Payment 환경을 경험해 보신 분 
- Java 언어에 능숙하고, Java Framework 기반 개발에 익숙하신 분 
- Javascript, JQuery 사용에 능숙하고, Javascript Framework 기반 개발에 익숙하신 분 
- RDBMS에 능숙하고 DB 모델링 가능한 분 
- Restful API 디자인에 능숙한 분 
- Linux 환경하에 개발,시스템 운영에 익숙하신 분 
- 대용량 데이타를 저장/분석 처리 시스템의 운영/구축 경험이 있으신 분',
                  '-',
                  '- 주택구입 및 전세금 저리대출 및 원리금 분할 상환 제도 (비연고지 근무자 사택지원) 
- 사내에 식당(조식,중식,석식제공) / Fitness Center/ 카페/ 수유실/ 샤워실/ 수면실 제공 
- 야근수당, 휴일수당, 출퇴근 야간교통비 지급 
- 자유복장 및 서열/호칭 "님"으로 불리는 flat한 조직문화 
- 그외에도 국내 최고수준으로 복리후생 및 각종 혜택 제공',
                  TO_DATE ('06/28/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('07/21/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  1);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
     VALUES (47,
             1,
             16,
             1,
             2,
             1,
             46,
             'SW시스템 지원',
             0,
             '- 1.설계/검증용 SW관리시스템 운영 관리 지원 
- 2.설계/검증용 SW자산관리 지원 
- 소요조사, 자산실사, 배포관리 
- SW도구 사내 표준화 활동, SW종류별 교육 지원 관리',
             '- 경력무관 
- 학력 초대졸 이상(졸업예정자 가능)',
             '전산(컴퓨터),전자, 통계 전공',
             '국민연금, 고용보험, 산재보험, 건강보험',
             TO_DATE ('06/05/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
             TO_DATE ('08/10/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
             0);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
     VALUES (1,
             1,
             1,
             1,
             1,
             1,
             4,
             '폰팔이',
             1,
             '갤럭시와 아이폰 팔기',
             '30세 이상',
             '유창한 언변',
             '4대보험',
             TO_DATE ('06/26/2017 09:56:39', 'MM/DD/YYYY HH24:MI:SS'),
             TO_DATE ('08/25/2017 09:56:39', 'MM/DD/YYYY HH24:MI:SS'),
             5);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
     VALUES (3,
             1,
             1,
             1,
             1,
             1,
             4,
             '보험팔이',
             1,
             '갤럭시와 아이폰 팔기',
             '30세 이상',
             '유창한 언변',
             '4대보험',
             TO_DATE ('06/26/2017 09:57:25', 'MM/DD/YYYY HH24:MI:SS'),
             TO_DATE ('08/25/2017 09:57:25', 'MM/DD/YYYY HH24:MI:SS'),
             2);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  8,
                  6,
                  1,
                  1,
                  3,
                  1,
                  5,
                  'Solutions Engineer',
                  17,
                  'At Facebook, Solutions Engineers are creative problem solvers who strive to reconcile business challenges using various technologies to create effective marketing solutions. This unique role is part of a small client facing engineering team working with Businesses, Marketing Partners & Agencies across APAC to help integrate Facebook in their products and services. Solutions Engineers embed themselves in the businesses of their partners providing technical consultation on various Facebook technologies related to Advertising, Pages, Platform & Mobile. The teams sits at the crossroads between various organizations like core engineering, product & marketing helping facilitate communication but also helping bring ideas from the market to life. This niche team has become a critical function at Facebook, not only to ensure the success of our partners on the platform but also to prototype opportunities we identify whilst interacting with clients. Collaborating deeply with clients to solve difficult problems, you will help build solutions to achieve business objectives such as performance marketing and brand awareness. Last year, Solutions Engineers contributed hundreds of thousands of lines of code to the Facebook codebase helping improve it’s marketing platform. Solutions Engineers are Software Engineers with a strong passion for partner interaction and a good sense of business, striving to help advertisers become better marketers. They contribute to creating delightful experiences for consumers making marketing more relevant and effectively driving more business for their clients. 

• Hands on coding for ~50% of time in a variety of languages, primarily C/C++ and PHP 
• Deeply understand the Business ecosystem, identify problems and solutions for Businesses 
• Build technical expertise in Facebook products including Ads API, Pages, Platform and provide consultative guidance to Businesses and ecosystem 
• Manage relationship with product teams & decision makers at businesses 
• Help launch products including supporting Alpha and Beta programs 
• Handle support escalations',
                  'BA/BS in Computer Science or equivalent degree/experience 
• Previous experience as a software engineer, solutions architect or partner/sales engineer 
• Deep understanding of the full web technology stack and/or mobile (TCP/IP, HTTP, HTML, JavaScript, CSS, RESTful API) 
• Excellent communication skills including experience speaking to a technical and business audiences ',
                  'Fluency in both Korean and English',
                  '간식, 음료, 주류 무한 제공 및 아침, 점심, 저녁 식대 제공 
자율 출퇴근 시간 및 매주 금요일 오후 Happy hour 
직원 및 직원가족의 상해, 질병에 대한 단체 상해보험을 통한 의료비 지원 
연간 102만원 건강관리 지원금(헬스, 스포츠 등) ',
                  TO_DATE ('04/21/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('06/30/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  2);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  41,
                  2,
                  5,
                  1,
                  3,
                  1,
                  42,
                  'Android Partner Engineering, Technical Solutions Consultant',
                  0,
                  '- Perform implementation reviews, advocate new product features, and ensure the prompt and proper resolution of technical challenges. 
- Improve product feature offerings by providing partner feedback to internal cross-functional teams including Product Management and Engineering. 
- Guarantee the technical aspects of a partner’s integration (both new and ongoing) by providing necessary documentation and technical guidance. 
- Identify, drive, and optimize the business growth flow from new business opportunities by leveraging Google technologies.  ',
                  '- BA/BS degree or equivalent practical experience. ',
                  '- Experience working with embedded systems; Familiarity with Linux kernel, device driver APIs, chipset, and Android. 
- Hands-on experience in the mobile/CE/embedded space. Knowledge of Internet technologies. 
- Experience with internet technologies and programming languages - Web Services, SOAP, XML, Java, Python and shell scripting. 
- Demonstrated creative problem-solving approach and strong analytical skills, combined with a strong sense of ownership, and a proactive can-do attitude. 
- Excellent communication and project management skills, with a track record of handling multiple customers and streams of work. ',
                  ' At Google, we don’t just accept difference - we celebrate it, we support it, and we thrive on it for the benefit of our employees, our products and our community. ',
                  TO_DATE ('06/08/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('07/07/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  1);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
     VALUES (2,
             1,
             4,
             1,
             3,
             1,
             2,
             '금융비즈니스분야-웹프로그래머',
             16,
             '- 웹프로그래머 업무 
- 금융솔루션 개발',
             '핵심 직무 역량
- 신입/경력 
- python, C, PHP, JAVA 중 한 개 이상의 언어 사용 가능자 
- 인턴 기간 중 JAVA, PHP, C 습득 필수과목입니다.',
             'tensorflow 사용 경험자',
             '주5일 12시간',
             TO_DATE ('03/05/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
             TO_DATE ('06/30/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
             12);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  7,
                  2,
                  2,
                  1,
                  3,
                  1,
                  4,
                  '웹프론트엔드 개발자 경력 3년 이상',
                  14,
                  'Food e Commerce 서비스의 다양한 웹 프론트앤드 개발합니다. 
Javascript web application framework, library 개발 및 운영합니다.',
                  '핵심 직무 역량
나이/성별/학력/전공 무관 
3년 이상의 웹 프론트앤드 개발 경험 
HTML(5), CSS, Javascript(최소 ES5) 기본 지식 보유 
AWS, Git & Github, HTTP, RESTful API 클라이언트 개발 경험 
Javascript MV* 기반 웹앱 개발 및 운영 경험 (Angular, React, Backbone 등) 
Grunt, Gulp, Webpack, Browserify 등의 도구 경험자 
기획/디자인/운영 등 다양한 직군과 같이 문제를 정의하고 해결책을 찾아나갈 수 있는 협업 능력 ',
                  'ES2015, ES2016 관련 기술 경험 
Javascript 관련 오픈 소스 기여 경험 
단위 테스트, UI 테스트 자동화 및 배포 자동화 경험 
웹사이트 성능 측정 및 최적화 경험 
웹사이트 보안에 대한 이해 
가벼운 백앤드 서비스(Like NodeJS) 개발 경험 및 Database에 대한 이해 (RDBMS, No-SQL)',
                  '행복한 삶을 위한 제도- 복리후생 

1. 4쩜5일제(오픈베타) : 매주 월요일 1시 출근 
2. 주 35시간 6시 퇴근 (점심시간 11시30분~1시! 반차는 오후 2시부터!) 
3. 지만가 :본인 및 가족 구성원(배우자,자녀,양가 부모님)의 생일, 결혼기념일 4시 퇴근 
4. 자기성장 도서비 지원 ',
                  TO_DATE ('05/06/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('06/25/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  1);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
     VALUES (6,
             1,
             12,
             1,
             3,
             2,
             2,
             '금융비즈니스분야-영업',
             3,
             '- 주요 업무
- 고급 폰팔이',
             '핵심 직무 역량
- 신입/경력 
- galaxy 8, iphone6 잘 파는 사람 
- 인턴 기간 중 g6는 완판하셔야합니다.',
             '폰팔이 경험자',
             '주6일 16시간',
             TO_DATE ('03/05/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
             TO_DATE ('06/30/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
             7);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  42,
                  1,
                  3,
                  9,
                  3,
                  1,
                  43,
                  '개발(Front-End)',
                  0,
                  '- 웹 Front-End 프레임워크 및 UI/UX 컴포넌트 개발',
                  '- WEB Front-End 개발 경력2년 이상 
- JavaScript, HTML/HTML5, CSS 능숙한자 
- 크로스브라우징 환경에서의 개발이 익숙한 자 
- 다양한 JavaScript 라이브러리/프레임워크 개발 경험자',
                  '- 국가유공자/보훈대상자, 근거리 거주자, 관련 학과 졸업자, 관련직무경험 
- 우대자격증 : 한국공인회계사회 주관 AT자격시험(국가공인), 대한상공회의소 주관 전산회계운용사(국가기술), 한국생산성본부 주관 ERP정보관리사(국가공인), 기타 개발 관련 자격증(정보처리기사 등) 
- Front-End 성능 튜닝 경험이 있으신 분 
- Full-Stack 개발이 가능한 자 (Node.js, Java 등의 객체지향 언어) 
- TypeScript, ECMAScript 2015/2016 기반의 개발이 가능한 자 
- React.js, Angular2등의 최신 기술에 관심이 많은 자 
- Pre-Processor(LESS, SASS, Stylus등) 활용이 가능한자 
- Task Runner(Webpack, Grunt, Gulp, npm등) 설정 및 활용이 가능한 자',
                  '- 법정복리 : 4대 사회보험, 퇴직금지급 
- 명절선물제공, 사내동호회 운영, 각종 경조휴가 및 경조금 지급 

* 강촌캠퍼스 근무자 지원 
- 식사제공 : 강촌캠퍼스 근무자 구내식당 조,중,석식 제공 
- 통근버스 운행 (잠실, 강변, 천호, 구리, 태릉입구, 상봉, 평내호평, 춘천) 
- 야근자용 기숙사 (100실규모, 2인1실). 
- 사내보육시설, 카페테리아, 헬스케어센터, 라인케어센터 등 운영 

* 보상제도 
- 연봉제 시행',
                  TO_DATE ('07/04/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('07/10/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  6);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  43,
                  1,
                  11,
                  9,
                  3,
                  1,
                  43,
                  'DBA (데이터베이스 관리자)',
                  0,
                  '- 전자세금계산서, 전자계약 관리/운영 
- 공전소, 유빌링 데이터베이스 관리/운영',
                  '- Oracle 사용 경험 필수 
- 데이터베이스 관리/튜닝 
- 관련업무 5년 이상',
                  '- 국가유공자/보훈대상자, 근거리 거주자, 관련 학과 졸업자, 관련직무경험 
- 우대자격증 : 한국공인회계사회 주관 AT자격시험(국가공인), 대한상공회의소 주관 전산회계운용사(국가기술), 한국생산성본부 주관 ERP정보관리사(국가공인), 기타 개발 관련 자격증(정보처리기사 등)',
                  '- 법정복리 : 4대 사회보험, 퇴직금지급 
- 명절선물제공, 사내동호회 운영, 각종 경조휴가 및 경조금 지급 

* 강촌캠퍼스 근무자 지원 
- 식사제공 : 강촌캠퍼스 근무자 구내식당 조,중,석식 제공 
- 통근버스 운행 (잠실, 강변, 천호, 구리, 태릉입구, 상봉, 평내호평, 춘천) 
- 야근자용 기숙사 (100실규모, 2인1실). 
- 사내보육시설, 카페테리아, 헬스케어센터, 라인케어센터 등 운영 

* 보상제도 
- 연봉제 시행',
                  TO_DATE ('07/04/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('07/10/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  6);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  23,
                  2,
                  2,
                  2,
                  3,
                  3,
                  27,
                  '[R&D] 소프트웨어 개발 연구원(병역특례포함)',
                  0,
                  '- 소프트웨어 개발 전 부문',
                  '- 4년제 대졸(학사) 이상/졸업 예정자 
- 컴퓨터 및 전산관련 전공자, 전자공학 전공자 우대 
- C & JAVA 프로그래밍 유경험자 
＊전문연구요원 희망자는 석사 이상 학위 소지자만 가능 (현 전문연구요원 근무자 전직 가능)',
                  '- 석사 이상 학위 소지자 우대 
- R&D 연구경력 개발자 우대 
- 장애인 및 보훈 대상자 우대',
                  '-',
                  TO_DATE ('06/16/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('06/30/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  0);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  21,
                  2,
                  1,
                  1,
                  4,
                  1,
                  25,
                  'IT(개발)',
                  0,
                  '- IT(개발)',
                  '- 신입·경력 
- 컴퓨터·전산 관련 분야 전공 
- ASP, ASP.NET, VB, SQL DB 경험자',
                  '-',
                  '- 연금보험 : 국민연금, 고용보험, 산재보험, 건강보험 
- 휴무·휴가 : 주5일근무, 연차 휴가, 출산 휴가, 경조사 휴가, 장기 근속 휴가 
- 보상제도 : 인센티브제, 장기근속자 포상, 우수사원 표창/포상, 퇴직금 
- 건강관리 지원 : 건강검진, 체력 단련비 지원 
- 생활편의 지원 : 석식제공 
- 경조사 지원 : 각종 경조금 
- 자기 개발비 : 영어 교육비',
                  TO_DATE ('05/19/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('06/30/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  3);INSERT INTO CAREER (CAREERID,
                    COMPANYTYPE,
                    FIELD,
                    LOCATION,
                    INDUSTRY,
                    EMPLOYMENTTYPE,
                    COMPANYID,
                    TITLE,
                    SALARY,
                    TASK,
                    REQUIREMENTS,
                    PREFERENCE,
                    WORKINGCONDITION,
                    POSTDATE,
                    ENDDATE,
                    BOOKMARKCNT)
        VALUES (
                  22,
                  2,
                  15,
                  1,
                  9,
                  1,
                  26,
                  '[기획/개발] O2O사업부 신규서비스 PM 팀장',
                  0,
                  '- O2O 신규서비스(Cupping, 할인지도 등) 기획 및 개발 총괄PM',
                  '- O2O 신규서비스 오픈관련 PM 경험자 
- 해당경력 5년 이상자 
- 독자적인 서비스PM 역할 수행경험 필수 
- 고객을 위한 서비스개선 및 내부업무 우선순위 관리 유경험자',
                  '- 컴퓨터공학 및 전산관련학 전공자 우대 
- 커뮤니티, 커머스 서비스 개발 및 기획경험자 우대 
- 보훈대상자(국가유공자)는 관련 법률에 의거 우대',
                  '-',
                  TO_DATE ('06/26/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  TO_DATE ('07/25/2017 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                  3);
				  
COMMIT;


