CREATE MEMORY TABLE BOARD (
    IDX INT NOT NULL PRIMARY KEY,                -- 게시글 고유번호
    USERID VARCHAR(50),                             -- 작성자 아이디
    USERNAME VARCHAR(50),                           -- 작성자 이름
    TITLE VARCHAR(200),                             -- 제목
    CONTENT CLOB,                                   -- 내용
    USE_YN CHAR(1),                                 -- 사용여부 (Y/N)
    REG_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- 작성일
    VIEW_COUNT INT DEFAULT 0                        -- 조회수
);
CREATE MEMORY TABLE IDS2 (
    TABLE_NAME VARCHAR(30) NOT NULL PRIMARY KEY,	-- ID를 관리할 테이블 이름 (예: 'BOARD')
    NEXT_ID INT NOT NULL					-- 다음에 사용할 게시글 번호 (PK 자동 증가용)
);

INSERT INTO IDS2 VALUES ('BOARD', 1);
INSERT INTO BOARD VALUES (1, 'hong', '홍길동', '첫 번째 게시글', '안녕하세요. 첫 게시글입니다.', 'Y', CURRENT_TIMESTAMP, 12);
INSERT INTO BOARD VALUES (2, 'lee', '이몽룡', '두 번째 글', '내용은 두 번째입니다.', 'Y', CURRENT_TIMESTAMP, 5);
INSERT INTO BOARD VALUES (3, 'sung', '성춘향', '세 번째 글', '세 번째 글 내용입니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (4, 'byeon', '변학도', '비공개 글', '이 글은 사용 안 함', 'N', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (5, 'kim', '김철수', '테스트용 게시물', '게시판 테스트 중입니다.', 'Y', CURRENT_TIMESTAMP, 20);
INSERT INTO BOARD VALUES (6, 'park', '박지민', '안녕하세요', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 3);
INSERT INTO BOARD VALUES (7, 'choi', '최수정', '문의드립니다', '문의 내용입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (8, 'jang', '장원영', '오늘 날씨가 정말 좋네요.', '간단한 인사글입니다.', 'Y', CURRENT_TIMESTAMP, 7);
INSERT INTO BOARD VALUES (9, 'seo', '서강준', '스프링 게시판 프로젝트 시작', '스프링 프레임워크를 활용한 게시판 구축.', 'Y', CURRENT_TIMESTAMP, 5);
INSERT INTO BOARD VALUES (10, 'yoon', '윤아', '여름 휴가 계획 공유', '휴가 계획에 대해 이야기 나눠요.', 'Y', CURRENT_TIMESTAMP, 2);
INSERT INTO BOARD VALUES (11, 'kang', '강다니엘', '기술 세미나 후기', '세미나에서 배운 내용 정리.', 'Y', CURRENT_TIMESTAMP, 9);
INSERT INTO BOARD VALUES (12, 'kimt', '김태형', '정말 유익했던 강의였습니다. 감사합니다.', '강의 피드백입니다.', 'Y', CURRENT_TIMESTAMP, 11);
INSERT INTO BOARD VALUES (13, 'lim', '임지연', '이그잼 게시판에 대한 제안', '개선 사항 제안드립니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (14, 'ha', '하정우', '긴 제목 테스트입니다. 게시판에서 제목이 길어질 경우 어떻게 나오는지 확인합니다.', '길이 테스트 내용입니다.', 'Y', CURRENT_TIMESTAMP, 6);
INSERT INTO BOARD VALUES (15, 'song', '송강', '단순 테스트 글', '테스트입니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (16, 'leeh', '이현우', '정책 변경 안내', '변경된 정책을 안내드립니다.', 'Y', CURRENT_TIMESTAMP, 15);
INSERT INTO BOARD VALUES (17, 'shin', '신세경', '공지사항', '중요 공지입니다.', 'Y', CURRENT_TIMESTAMP, 18);
INSERT INTO BOARD VALUES (18, 'jo', '조인성', '자료실 이용 안내', '자료실 관련 안내 사항입니다.', 'Y', CURRENT_TIMESTAMP, 14);
INSERT INTO BOARD VALUES (19, 'bae', '배수지', '회원 등급 변경 안내드립니다.', '회원 등급 관련 공지입니다.', 'Y', CURRENT_TIMESTAMP, 4);
INSERT INTO BOARD VALUES (20, 'jung', '정해인', '업데이트 일정 안내드립니다.', '업데이트 일정을 확인해주세요.', 'Y', CURRENT_TIMESTAMP, 10);
INSERT INTO BOARD VALUES (21, 'user21', '이영애', '테스트 글 21', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (22, 'user22', '김우빈', '테스트 글 22', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 2);
INSERT INTO BOARD VALUES (23, 'user23', '한효주', '테스트 글 23', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (24, 'user24', '이수혁', '테스트 글 24', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 4);
INSERT INTO BOARD VALUES (25, 'user25', '정은지', '테스트 글 25', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 3);
INSERT INTO BOARD VALUES (26, 'user26', '박보검', '자유게시판 공지', '자유게시판 이용 시 주의사항 안내.', 'Y', CURRENT_TIMESTAMP, 12);
INSERT INTO BOARD VALUES (27, 'user27', '수지', '길이가 조금 긴 제목으로 구성된 테스트 글입니다.', '테스트.', 'Y', CURRENT_TIMESTAMP, 6);
INSERT INTO BOARD VALUES (28, 'user28', '서예지', '업무 일정 공유합니다', '참고 바랍니다.', 'Y', CURRENT_TIMESTAMP, 5);
INSERT INTO BOARD VALUES (29, 'user29', '김고은', '회의록 공유', '7월 정기 회의록 공유드립니다.', 'Y', CURRENT_TIMESTAMP, 7);
INSERT INTO BOARD VALUES (30, 'user30', '이제훈', '단순 테스트입니다.', '테스트입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (31, 'user31', '장동건', '긴 제목으로 테스트하는 게시글입니다. 시스템에서 어떻게 처리되는지 확인합니다.', '긴 제목 확인.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (32, 'user32', '전지현', '데이터 검증 관련 이슈 정리', '검토 바랍니다.', 'Y', CURRENT_TIMESTAMP, 3);
INSERT INTO BOARD VALUES (33, 'user33', '하연수', '로그인 문제 발생', '로그인 관련 오류 보고입니다.', 'Y', CURRENT_TIMESTAMP, 8);
INSERT INTO BOARD VALUES (34, 'user34', '유재석', '테스트 글 34', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 2);
INSERT INTO BOARD VALUES (35, 'user35', '박나래', '테스트 글 35', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (36, 'user36', '김종국', '테스트 글 36', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (37, 'user37', '송지효', '게시판 점검 안내', '금일 오후 점검 예정입니다.', 'Y', CURRENT_TIMESTAMP, 9);
INSERT INTO BOARD VALUES (38, 'user38', '강호동', '급하게 공유드립니다!', '확인 부탁드립니다.', 'Y', CURRENT_TIMESTAMP, 10);
INSERT INTO BOARD VALUES (39, 'user39', '신동엽', '긴제목! 긴제목! 긴제목! 긴제목! 긴제목! 긴제목! 긴제목! 긴제목!', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 5);
INSERT INTO BOARD VALUES (40, 'user40', '이효리', '비공개 게시글입니다.', '사용하지 않음.', 'N', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (41, 'user41', '윤아', '세미나 일정 공지', '공지 내용입니다.', 'Y', CURRENT_TIMESTAMP, 11);
INSERT INTO BOARD VALUES (42, 'user42', '은우', '테스트 글 42', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 2);
INSERT INTO BOARD VALUES (43, 'user43', '아이유', '테스트 글 43', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 3);
INSERT INTO BOARD VALUES (44, 'user44', '이준기', '테스트 글 44', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 4);
INSERT INTO BOARD VALUES (45, 'user45', '박서준', '공지사항', '시스템 점검 공지입니다.', 'Y', CURRENT_TIMESTAMP, 8);
INSERT INTO BOARD VALUES (46, 'user46', '한지민', '정기 점검 일정', '점검 안내드립니다.', 'Y', CURRENT_TIMESTAMP, 6);
INSERT INTO BOARD VALUES (47, 'user47', '손예진', '테스트 글 47', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (48, 'user48', '공유', '테스트 글 48', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (49, 'user49', '고아라', '테스트 글 49', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 2);
INSERT INTO BOARD VALUES (50, 'user50', '이동욱', '테스트 글 50', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (51, 'user51', '전소민', '길고 복잡한 제목을 가진 테스트 게시글입니다. 다양한 상황을 고려해 작성했습니다.', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 5);
INSERT INTO BOARD VALUES (52, 'user52', '이광수', '예제 데이터 입력', '예제용 테스트 게시글입니다.', 'Y', CURRENT_TIMESTAMP, 3);
INSERT INTO BOARD VALUES (53, 'user53', '박지성', '공지사항', '중요한 공지입니다.', 'Y', CURRENT_TIMESTAMP, 6);
INSERT INTO BOARD VALUES (54, 'user54', '김연아', '중복 체크 테스트', '중복 데이터 방지용.', 'Y', CURRENT_TIMESTAMP, 2);
INSERT INTO BOARD VALUES (55, 'user55', '정호연', '업데이트 예정 공지', '업데이트 사전 안내.', 'Y', CURRENT_TIMESTAMP, 7);
INSERT INTO BOARD VALUES (56, 'user56', '김혜수', '오늘의 일정', '일정 공유합니다.', 'Y', CURRENT_TIMESTAMP, 0);
INSERT INTO BOARD VALUES (57, 'user57', '박해일', '로그 점검 결과', '결과 공유합니다.', 'Y', CURRENT_TIMESTAMP, 3);
INSERT INTO BOARD VALUES (58, 'user58', '윤계상', '에러 리포트', '에러 상세내용 포함.', 'Y', CURRENT_TIMESTAMP, 4);
INSERT INTO BOARD VALUES (59, 'user59', '정우성', '테스트용 게시물입니다.', '내용입니다.', 'Y', CURRENT_TIMESTAMP, 1);
INSERT INTO BOARD VALUES (60, 'user60', '이병헌', '자료실 게시글 테스트', '파일 업로드 확인용.', 'Y', CURRENT_TIMESTAMP, 5);


CREATE MEMORY TABLE SAMPLE(ID VARCHAR(16) NOT NULL PRIMARY KEY,NAME VARCHAR(50), DESCRIPTION VARCHAR(100),USE_YN CHAR(1),REG_USER VARCHAR(10));
CREATE MEMORY TABLE IDS(TABLE_NAME VARCHAR(16) NOT NULL PRIMARY KEY, NEXT_ID DECIMAL(30) NOT NULL);
SET SCHEMA PUBLIC
INSERT INTO SAMPLE VALUES('SAMPLE-00001','Runtime Environment','Foundation Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00002','Runtime Environment','Persistence Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00003','Runtime Environment','Presentation Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00004','Runtime Environment','Business Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00005','Runtime Environment','Batch Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00006','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00007','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00008','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00009','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00010','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00011','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00012','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00013','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00014','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00015','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00016','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00017','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00018','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00019','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00020','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00021','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00022','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00023','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00024','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00025','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00026','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00027','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00028','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00029','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00030','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00031','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00032','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00033','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00034','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00035','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00036','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00037','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00038','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00039','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00040','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00041','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00042','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00043','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00044','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00045','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00046','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00047','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00048','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00049','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00050','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00051','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00052','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00053','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00054','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00055','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00056','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00057','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00058','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00059','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00060','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00061','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00062','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00063','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00064','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00065','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00066','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00067','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00068','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00069','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00070','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00071','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00072','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00073','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00074','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00075','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00076','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00077','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00078','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00079','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00080','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00081','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00082','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00083','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00084','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00085','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00086','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00087','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00088','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00089','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00090','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00091','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00092','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00093','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00094','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00095','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00096','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00097','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00098','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00099','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00100','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00101','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00102','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00103','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00104','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00105','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00106','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00107','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00108','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00109','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00110','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00111','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00112','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00113','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO SAMPLE VALUES('SAMPLE-00114','Runtime Environment','Integration Layer','Y','eGov')
INSERT INTO IDS VALUES('SAMPLE',115)
