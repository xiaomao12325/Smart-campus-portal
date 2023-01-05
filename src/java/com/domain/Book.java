package com.domain;

public class Book {
    private String BookId;
    private String BookName;
    private String BookType;
    private String BookLink;
    private String Author;
    private int DownloadTimes;
    private String Publisher;
    private String PublishTime;

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        Author = author;
    }

    public String getPublisher() {
        return Publisher;
    }

    public void setPublisher(String publisher) {
        Publisher = publisher;
    }

    public String getPublishTime() {
        return PublishTime;
    }

    public void setPublishTime(String publishTime) {
        PublishTime = publishTime;
    }

    public String getBookId() {
        return BookId;
    }

    public void setBookId(String bookId) {
        BookId = bookId;
    }

    public String getBookName() {
        return BookName;
    }

    public void setBookName(String bookName) {
        BookName = bookName;
    }

    public String getBookType() {
        return BookType;
    }

    public void setBookType(String bookType) {
        BookType = bookType;
    }

    public String getBookLink() {
        return BookLink;
    }

    public void setBookLink(String bookLink) {
        BookLink = bookLink;
    }

    public int getDownloadTimes() {
        return DownloadTimes;
    }

    public void setDownloadTimes(int downloadTimes) {
        DownloadTimes = downloadTimes;
    }
}
