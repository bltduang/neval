package com.blt.pojo;

public class BookActicle {
    private Long id;

    private Long bookid;

    private Integer idx;

    private String digest;

    private String bookuuid;

    private String title;

    private Integer size;

    private String rawurl;

    private String source;

    private Integer status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBookid() {
        return bookid;
    }

    public void setBookid(Long bookid) {
        this.bookid = bookid;
    }

    public Integer getIdx() {
        return idx;
    }

    public void setIdx(Integer idx) {
        this.idx = idx;
    }

    public String getDigest() {
        return digest;
    }

    public void setDigest(String digest) {
        this.digest = digest == null ? null : digest.trim();
    }

    public String getBookuuid() {
        return bookuuid;
    }

    public void setBookuuid(String bookuuid) {
        this.bookuuid = bookuuid == null ? null : bookuuid.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getRawurl() {
        return rawurl;
    }

    public void setRawurl(String rawurl) {
        this.rawurl = rawurl == null ? null : rawurl.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}