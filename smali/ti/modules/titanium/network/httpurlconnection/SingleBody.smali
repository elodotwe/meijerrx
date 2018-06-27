.class public abstract Lti/modules/titanium/network/httpurlconnection/SingleBody;
.super Ljava/lang/Object;
.source "SingleBody.java"

# interfaces
.implements Lti/modules/titanium/network/httpurlconnection/Body;


# instance fields
.field private parent:Lti/modules/titanium/network/httpurlconnection/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/httpurlconnection/SingleBody;->parent:Lti/modules/titanium/network/httpurlconnection/Entity;

    .line 24
    return-void
.end method


# virtual methods
.method public getParent()Lti/modules/titanium/network/httpurlconnection/Entity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/SingleBody;->parent:Lti/modules/titanium/network/httpurlconnection/Entity;

    return-object v0
.end method

.method public setParent(Lti/modules/titanium/network/httpurlconnection/Entity;)V
    .locals 0
    .param p1, "parent"    # Lti/modules/titanium/network/httpurlconnection/Entity;

    .prologue
    .line 37
    iput-object p1, p0, Lti/modules/titanium/network/httpurlconnection/SingleBody;->parent:Lti/modules/titanium/network/httpurlconnection/Entity;

    .line 38
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
