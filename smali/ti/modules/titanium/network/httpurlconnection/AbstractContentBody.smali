.class public abstract Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;
.super Lti/modules/titanium/network/httpurlconnection/SingleBody;
.source "AbstractContentBody.java"

# interfaces
.implements Lti/modules/titanium/network/httpurlconnection/ContentBody;


# instance fields
.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private parent:Lti/modules/titanium/network/httpurlconnection/Entity;

.field private final subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Lti/modules/titanium/network/httpurlconnection/SingleBody;-><init>()V

    .line 22
    iput-object v2, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->parent:Lti/modules/titanium/network/httpurlconnection/Entity;

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MIME type may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->mimeType:Ljava/lang/String;

    .line 30
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 31
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->mediaType:Ljava/lang/String;

    .line 33
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->subType:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_1
    iput-object p1, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->mediaType:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->subType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getContentTypeParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lti/modules/titanium/network/httpurlconnection/Entity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->parent:Lti/modules/titanium/network/httpurlconnection/Entity;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setParent(Lti/modules/titanium/network/httpurlconnection/Entity;)V
    .locals 0
    .param p1, "parent"    # Lti/modules/titanium/network/httpurlconnection/Entity;

    .prologue
    .line 47
    iput-object p1, p0, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;->parent:Lti/modules/titanium/network/httpurlconnection/Entity;

    .line 48
    return-void
.end method
