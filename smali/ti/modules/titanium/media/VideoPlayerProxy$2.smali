.class Lti/modules/titanium/media/VideoPlayerProxy$2;
.super Ljava/lang/Object;
.source "VideoPlayerProxy.java"

# interfaces
.implements Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/VideoPlayerProxy;->createThumbnailResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/VideoPlayerProxy;

.field final synthetic val$callback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$videoPlayerProxy:Lti/modules/titanium/media/VideoPlayerProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/VideoPlayerProxy;Lti/modules/titanium/media/VideoPlayerProxy;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    iput-object p2, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->val$videoPlayerProxy:Lti/modules/titanium/media/VideoPlayerProxy;

    iput-object p3, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleThumbnailResponse(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "bitmapResponse"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 757
    const-string v0, "source"

    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->val$videoPlayerProxy:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-virtual {v1}, Lti/modules/titanium/media/VideoPlayerProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    return-void
.end method
