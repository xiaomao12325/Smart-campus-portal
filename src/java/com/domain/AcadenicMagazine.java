package com.domain;

public class AcadenicMagazine {
    private String MagazineId;
    private String Type;
    private String MagazineName;
    private String PublishDate;
    private String AuthorName;
    private String Publisher;
    private String Level;
    private String ArticleName;
    private String Link;

    public String getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(String publishDate) {
        PublishDate = publishDate;
    }

    public String getPublisher() {
        return Publisher;
    }

    public void setPublisher(String publisher) {
        Publisher = publisher;
    }

    public String getLevel() {
        return Level;
    }

    public void setLevel(String level) {
        Level = level;
    }

    public String getArticleName() {
        return ArticleName;
    }

    public void setArticleName(String articleName) {
        ArticleName = articleName;
    }

    public String getLink() {
        return Link;
    }

    public void setLink(String link) {
        Link = link;
    }

    public String getMagazineName() {
        return MagazineName;
    }

    public void setMagazineName(String magazineName) {
        MagazineName = magazineName;
    }

    public String getMagazineId() {
        return MagazineId;
    }

    public void setMagazineId(String magazineId) {
        MagazineId = magazineId;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public String getAuthorName() {
        return AuthorName;
    }

    public void setAuthorName(String authorName) {
        AuthorName = authorName;
    }
}
