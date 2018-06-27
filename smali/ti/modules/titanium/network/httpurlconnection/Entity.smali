.class public abstract Lti/modules/titanium/network/httpurlconnection/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field protected contentEncoding:Ljava/lang/String;

.field protected contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/Entity;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/Entity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lti/modules/titanium/network/httpurlconnection/Entity;->contentEncoding:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lti/modules/titanium/network/httpurlconnection/Entity;->contentType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
