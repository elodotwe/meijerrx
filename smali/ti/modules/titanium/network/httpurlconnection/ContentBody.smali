.class public interface abstract Lti/modules/titanium/network/httpurlconnection/ContentBody;
.super Ljava/lang/Object;
.source "ContentBody.java"

# interfaces
.implements Lti/modules/titanium/network/httpurlconnection/ContentDescriptor;


# virtual methods
.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
