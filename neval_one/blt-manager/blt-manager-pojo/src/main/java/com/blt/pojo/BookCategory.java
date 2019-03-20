package com.blt.pojo;

public class BookCategory {
    private Long bookid;

    private Integer categorycode;

    private String title;

    private String imgurl;

    public Long getBookid() {
        return bookid;
    }

    public void setBookid(Long bookid) {
        this.bookid = bookid;
    }

    public Integer getCategorycode() {
        return categorycode;
    }

    public void setCategorycode(Integer categorycode) {
        this.categorycode = categorycode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }
}