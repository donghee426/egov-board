package egovframework.board.dto;

import java.sql.Timestamp;

// 게시판 DTO (데이터 전달 객체)
public class BoardDTO {

    private Long idx;               // 게시글 번호 (PK)
    private String userid;          // 작성자 아이디
    private String username;        // 작성자 이름
    private String title;           // 제목
    private String content;         // 내용
    private String useYn;           // 사용 여부 (Y/N)
    private Timestamp regDate;      // 작성일
    private Integer viewCount;      // 조회수

    // Getter/Setter
    public Long getIdx() {
        return idx;
    }

    public void setIdx(Long idx) {
        this.idx = idx;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUseYn() {
        return useYn;
    }

    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }

    public Timestamp getRegDate() {
        return regDate;
    }

    public void setRegDate(Timestamp regDate) {
        this.regDate = regDate;
    }

    public Integer getViewCount() {
        return viewCount;
    }

    public void setViewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }
}
