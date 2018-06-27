.class public Lti/modules/titanium/media/TiThumbnailRetriever;
.super Ljava/lang/Object;
.source "TiThumbnailRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;
    }
.end annotation


# static fields
.field public static final MSG_FIRST_ID:I = 0x64

.field public static final MSG_GET_BITMAP:I = 0x65

.field public static final MSG_LAST_ID:I = 0x66

.field private static final TAG:Ljava/lang/String; = "TiMediaMetadataRetriever"


# instance fields
.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mUri:Landroid/net/Uri;

.field private runtimeHandler:Landroid/os/Handler;

.field private task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->runtimeHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method private getBitmapTask()Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lti/modules/titanium/media/TiThumbnailRetriever$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiThumbnailRetriever$1;-><init>(Lti/modules/titanium/media/TiThumbnailRetriever;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->task:Landroid/os/AsyncTask;

    .line 189
    iget-object v0, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->task:Landroid/os/AsyncTask;

    return-object v0
.end method


# virtual methods
.method public cancelAnyRequestsAndRelease()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 48
    iget-object v0, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 50
    return-void
.end method

.method public getBitmap([IILti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;)V
    .locals 4
    .param p1, "arrayOfTimes"    # [I
    .param p2, "optionSelected"    # I
    .param p3, "thumbnailResponseHandler"    # Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;

    .prologue
    .line 54
    iget-object v2, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 55
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 56
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const/4 v2, -0x1

    const-string v3, "Error getting Thumbnail. Url is null."

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 57
    invoke-interface {p3, v0}, Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;->handleThumbnailResponse(Lorg/appcelerator/kroll/KrollDict;)V

    .line 66
    .end local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->runtimeHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 61
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "options"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 63
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    .line 77
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "options"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "option":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 80
    .local v0, "arrayOfTimes":[I
    invoke-direct {p0}, Lti/modules/titanium/media/TiThumbnailRetriever;->getBitmapTask()Landroid/os/AsyncTask;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->task:Landroid/os/AsyncTask;

    .line 81
    iget-object v4, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->task:Landroid/os/AsyncTask;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mUri:Landroid/net/Uri;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v6, v5, v3

    const/4 v3, 0x4

    iget-object v6, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    .end local v0    # "arrayOfTimes":[I
    .end local v1    # "option":I
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 43
    iput-object p1, p0, Lti/modules/titanium/media/TiThumbnailRetriever;->mUri:Landroid/net/Uri;

    .line 44
    return-void
.end method
