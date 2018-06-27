.class public interface abstract Lti/modules/titanium/network/SecurityManagerProtocol;
.super Ljava/lang/Object;
.source "SecurityManagerProtocol.java"


# virtual methods
.method public abstract getKeyManagers(Lti/modules/titanium/network/HTTPClientProxy;)[Ljavax/net/ssl/X509KeyManager;
.end method

.method public abstract getTrustManagers(Lti/modules/titanium/network/HTTPClientProxy;)[Ljavax/net/ssl/X509TrustManager;
.end method

.method public abstract willHandleURL(Landroid/net/Uri;)Z
.end method
