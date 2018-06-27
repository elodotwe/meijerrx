.class public interface abstract Lti/modules/titanium/network/httpurlconnection/Header;
.super Ljava/lang/Object;
.source "Header.java"


# virtual methods
.method public abstract getElements()[Lti/modules/titanium/network/httpurlconnection/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
