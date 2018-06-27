.class Lti/modules/titanium/media/TiSound$2;
.super Ljava/util/TimerTask;
.source "TiSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiSound;->startProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiSound;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiSound;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lti/modules/titanium/media/TiSound$2;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 521
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/media/TiSound$2;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/media/TiSound$2;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lti/modules/titanium/media/TiSound$2;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 523
    .local v1, "position":I
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 524
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "progress"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v3, p0, Lti/modules/titanium/media/TiSound$2;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "progress"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "TiSound"

    const-string v4, "Issue while progressTimer run: "

    invoke-static {v3, v4, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
