.class public interface abstract Lti/modules/titanium/network/httpurlconnection/HttpEntity;
.super Ljava/lang/Object;
.source "HttpEntity.java"


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getContentEncoding()Lti/modules/titanium/network/httpurlconnection/Header;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Lti/modules/titanium/network/httpurlconnection/Header;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
