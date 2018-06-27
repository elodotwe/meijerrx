.class public Lti/modules/titanium/media/VideoPlayerProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "VideoPlayerProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field protected static final CONTROL_MSG_ACTIVITY_AVAILABLE:I = 0x65

.field protected static final CONTROL_MSG_CONFIG_CHANGED:I = 0x66

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_GET_PLAYBACK_TIME:I = 0x527

.field private static final MSG_HIDE_MEDIA_CONTROLLER:I = 0x52a

.field private static final MSG_MEDIA_CONTROL_CHANGE:I = 0x524

.field private static final MSG_PAUSE:I = 0x523

.field private static final MSG_PLAY:I = 0x521

.field private static final MSG_RELEASE:I = 0x529

.field private static final MSG_RELEASE_RESOURCES:I = 0x528

.field private static final MSG_SCALING_CHANGE:I = 0x525

.field private static final MSG_SET_PLAYBACK_TIME:I = 0x526

.field private static final MSG_SET_VIEW_FROM_ACTIVITY:I = 0x52b

.field private static final MSG_STOP:I = 0x522

.field private static final PROPERTY_MOVIE_CONTROL_MODE:Ljava/lang/String; = "movieControlMode"

.field private static final PROPERTY_MOVIE_CONTROL_STYLE:Ljava/lang/String; = "movieControlStyle"

.field public static final PROPERTY_SEEK_TO_ON_RESUME:Ljava/lang/String; = "__seek_to_on_resume__"

.field private static final TAG:Ljava/lang/String; = "VideoPlayerProxy"


# instance fields
.field private activityListeningTo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private loadState:I

.field private mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

.field protected mediaControlStyle:I

.field private playbackState:I

.field protected scalingMode:I

.field private videoActivityHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 70
    iput v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    .line 72
    iput v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->loadState:I

    .line 73
    iput v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->playbackState:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "volume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 89
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/VideoPlayerProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/VideoPlayerProxy;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/media/VideoPlayerProxy;)Lti/modules/titanium/media/TiUIVideoView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/VideoPlayerProxy;

    .prologue
    .line 40
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/VideoPlayerProxy;Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/VideoPlayerProxy;
    .param p1, "x1"    # Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    return-void
.end method

.method private control(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 231
    const-string v2, "VideoPlayerProxy"

    invoke-direct {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->getActionName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 239
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v0, :cond_1

    .line 240
    const-string v2, "VideoPlayerProxy"

    const-string v3, "Player action ignored; player has not been created."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    .line 246
    .local v1, "vv":Lti/modules/titanium/media/TiUIVideoView;
    packed-switch p1, :pswitch_data_0

    .line 257
    const-string v2, "VideoPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown player action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :pswitch_0
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->play()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->stop()V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->pause()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x521
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createControlHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lti/modules/titanium/media/VideoPlayerProxy$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/VideoPlayerProxy$1;-><init>(Lti/modules/titanium/media/VideoPlayerProxy;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method private createThumbnailResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;
    .locals 2
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 752
    move-object v0, p0

    .line 753
    .local v0, "videoPlayerProxy":Lti/modules/titanium/media/VideoPlayerProxy;
    new-instance v1, Lti/modules/titanium/media/VideoPlayerProxy$2;

    invoke-direct {v1, p0, v0, p1}, Lti/modules/titanium/media/VideoPlayerProxy$2;-><init>(Lti/modules/titanium/media/VideoPlayerProxy;Lti/modules/titanium/media/VideoPlayerProxy;Lorg/appcelerator/kroll/KrollFunction;)V

    return-object v1
.end method

.method private firePlaybackState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 526
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->playbackState:I

    .line 527
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 528
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "playbackState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "playbackstate"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 531
    const-string v1, "playbackState"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private getActionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 648
    packed-switch p1, :pswitch_data_0

    .line 656
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 650
    :pswitch_0
    const-string v0, "play"

    goto :goto_0

    .line 652
    :pswitch_1
    const-string v0, "pause"

    goto :goto_0

    .line 654
    :pswitch_2
    const-string v0, "stop"

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x521
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getVideoView()Lti/modules/titanium/media/TiUIVideoView;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/media/TiUIVideoView;

    return-object v0
.end method

.method private launchVideoActivity(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lti/modules/titanium/media/TiVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "backgroundColor"

    const-string v2, "backgroundColor"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->createControlHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->videoActivityHandler:Landroid/os/Handler;

    .line 178
    const-string v1, "messenger"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lti/modules/titanium/media/VideoPlayerProxy;->videoActivityHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 1
    .param p1, "layout"    # Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .prologue
    .line 125
    new-instance v0, Lti/modules/titanium/media/TiUIVideoView;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiUIVideoView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 126
    .local v0, "tiView":Lti/modules/titanium/media/TiUIVideoView;
    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 127
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiUIVideoView;->setVideoViewFromActivityLayout(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    .line 128
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 129
    return-void
.end method


# virtual methods
.method public cancelAllThumbnailImageRequests()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiThumbnailRetriever;->cancelAnyRequestsAndRelease()V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

    .line 740
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 482
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lti/modules/titanium/media/TiUIVideoView;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiUIVideoView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public fireComplete(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 549
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 550
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 552
    const/4 v1, -0x1

    const-string v2, "Video Playback encountered an error"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 556
    :goto_0
    const-string v1, "complete"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 557
    return-void

    .line 554
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public fireLoadState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 536
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->loadState:I

    .line 537
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 538
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "loadState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "currentPlaybackTime"

    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getCurrentPlaybackTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "loadstate"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 541
    if-nez p1, :cond_0

    .line 542
    const-string v1, "duration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    const-string v1, "playableDuration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    :cond_0
    return-void
.end method

.method public firePlaying()V
    .locals 3

    .prologue
    .line 561
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 562
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "playing"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    const-string v0, "Ti.Media.VideoPlayer"

    return-object v0
.end method

.method public getCurrentPlaybackTime()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_0

    .line 493
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->getCurrentPlaybackTime()I

    move-result v1

    .line 504
    :cond_0
    :goto_0
    return v1

    .line 496
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x527

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 498
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLoadState()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->loadState:I

    return v0
.end method

.method public getMediaControlStyle()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    return v0
.end method

.method public getMovieControlMode()I
    .locals 2

    .prologue
    .line 428
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlMode is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMediaControlStyle()I

    move-result v0

    return v0
.end method

.method public getMovieControlStyle()I
    .locals 2

    .prologue
    .line 448
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlStyle is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMediaControlStyle()I

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->playbackState:I

    return v0
.end method

.method public getPlaying()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiUIVideoView;->isPlaying()Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScalingMode()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 136
    const-string v6, "mediaControlStyle"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .local v3, "mcStyle":Ljava/lang/Object;
    const-string v6, "movieControlMode"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "mcModeDeprecated":Ljava/lang/Object;
    const-string v6, "movieControlStyle"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    .local v4, "mcStyleDeprecated":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 140
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    .line 149
    :cond_0
    :goto_0
    const-string v6, "scalingMode"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 150
    .local v5, "sMode":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 151
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    .local v0, "fullscreen":Z
    const-string v6, "fullscreen"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, "fullscreenObj":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 161
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    :cond_2
    if-eqz v0, :cond_3

    .line 165
    invoke-direct {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->launchVideoActivity(Lorg/appcelerator/kroll/KrollDict;)V

    .line 168
    :cond_3
    return-void

    .line 141
    .end local v0    # "fullscreen":Z
    .end local v1    # "fullscreenObj":Ljava/lang/Object;
    .end local v5    # "sMode":Ljava/lang/Object;
    :cond_4
    if-eqz v2, :cond_5

    .line 142
    const-string v6, "VideoPlayerProxy"

    const-string v7, "movieControlMode is deprecated.  Use mediaControlStyle instead."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    goto :goto_0

    .line 144
    :cond_5
    if-eqz v4, :cond_0

    .line 145
    const-string v6, "VideoPlayerProxy"

    const-string v7, "movieControlStyle is deprecated.  Use mediaControlStyle instead."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 339
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x521

    if-lt v2, v3, :cond_1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x523

    if-gt v2, v3, :cond_1

    .line 340
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 341
    const/4 v0, 0x1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    .line 345
    .local v0, "handled":Z
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    .line 346
    .local v1, "vv":Lti/modules/titanium/media/TiUIVideoView;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 399
    :goto_1
    if-nez v0, :cond_0

    .line 400
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 348
    :pswitch_0
    if-eqz v1, :cond_2

    .line 349
    iget v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiUIVideoView;->setMediaControlStyle(I)V

    .line 351
    :cond_2
    const/4 v0, 0x1

    .line 352
    goto :goto_1

    .line 354
    :pswitch_1
    if-eqz v1, :cond_3

    .line 355
    iget v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiUIVideoView;->setScalingMode(I)V

    .line 357
    :cond_3
    const/4 v0, 0x1

    .line 358
    goto :goto_1

    .line 360
    :pswitch_2
    if-eqz v1, :cond_4

    .line 361
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiUIVideoView;->seek(I)V

    .line 363
    :cond_4
    const/4 v0, 0x1

    .line 364
    goto :goto_1

    .line 366
    :pswitch_3
    if-eqz v1, :cond_5

    .line 367
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->getCurrentPlaybackTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 371
    :goto_2
    const/4 v0, 0x1

    .line 372
    goto :goto_1

    .line 369
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 374
    :pswitch_4
    if-eqz v1, :cond_6

    .line 375
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->releaseVideoView()V

    .line 377
    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 378
    const/4 v0, 0x1

    .line 379
    goto :goto_1

    .line 381
    :pswitch_5
    if-eqz v1, :cond_7

    .line 382
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->release()V

    .line 384
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 385
    const/4 v0, 0x1

    .line 386
    goto :goto_1

    .line 388
    :pswitch_6
    if-eqz v1, :cond_8

    .line 389
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->hideMediaController()V

    .line 391
    :cond_8
    const/4 v0, 0x1

    .line 392
    goto :goto_1

    .line 394
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    .line 395
    const/4 v0, 0x1

    goto :goto_1

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x524
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 329
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getPlaying()Z

    move-result v0

    .line 698
    .local v0, "wasPlaying":Z
    if-nez v0, :cond_0

    .line 700
    const-string v2, "__seek_to_on_resume__"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    const-string v2, "__seek_to_on_resume__"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 702
    :goto_0
    const-string v2, "__seek_to_on_resume__"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_1

    .line 707
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->release()V

    .line 713
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 714
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 718
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->cancelAllThumbnailImageRequests()V

    .line 720
    return-void

    :cond_3
    move v0, v1

    .line 701
    goto :goto_0

    .line 710
    :cond_4
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x529

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    const-string v1, "__seek_to_on_resume__"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getCurrentPlaybackTime()I

    move-result v0

    .line 683
    .local v0, "seekToOnResume":I
    const-string v1, "__seek_to_on_resume__"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->pause()V

    goto :goto_0
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 613
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 614
    return-void
.end method

.method public onPlaybackError(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 618
    const-string v1, "Unknown"

    .line 619
    .local v1, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 627
    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 628
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 629
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 631
    const-string v2, "error"

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 632
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 633
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 634
    return-void

    .line 621
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :sswitch_0
    const-string v1, "Not valid for progressive playback"

    .line 622
    goto :goto_0

    .line 624
    :sswitch_1
    const-string v1, "Server died"

    goto :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPlaybackPaused()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 602
    return-void
.end method

.method public onPlaybackReady(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 568
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 569
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    const-string v2, "playableDuration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    const-string v2, "endPlaybackTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    const-string v2, "initialPlaybackTime"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    const-string v2, "initialPlaybackTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    :cond_0
    const-string v2, "durationavailable"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 578
    const-string v2, "durationAvailable"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 580
    const-string v2, "preload"

    invoke-virtual {p0, v2, v4}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 581
    const-string v2, "load"

    invoke-virtual {p0, v2, v4}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 582
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 583
    const-string v2, "autoplay"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 584
    .local v0, "autoplay":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->play()V

    .line 587
    :cond_2
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 592
    return-void
.end method

.method public onPlaybackStopped()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 607
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 608
    return-void
.end method

.method public onPlaying()V
    .locals 0

    .prologue
    .line 596
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaying()V

    .line 597
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 666
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 669
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 671
    :cond_0
    return-void
.end method

.method public onSeekingBackward()V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 644
    return-void
.end method

.method public onSeekingForward()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 639
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 661
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 692
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x523

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 282
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x521

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 266
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 293
    const-string v0, "VideoPlayerProxy"

    const-string v1, "release()"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiUIVideoView;->releaseVideoView()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x528

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestThumbnailImagesAtTimes([Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .param p1, "times"    # [Ljava/lang/Object;
    .param p2, "option"    # Ljava/lang/Object;
    .param p3, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 725
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->cancelAllThumbnailImageRequests()V

    .line 727
    new-instance v0, Lti/modules/titanium/media/TiThumbnailRetriever;

    invoke-direct {v0}, Lti/modules/titanium/media/TiThumbnailRetriever;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

    .line 728
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

    const/4 v1, 0x0

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiThumbnailRetriever;->setUri(Landroid/net/Uri;)V

    .line 729
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mTiThumbnailRetriever:Lti/modules/titanium/media/TiThumbnailRetriever;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v1

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, p3}, Lti/modules/titanium/media/VideoPlayerProxy;->createThumbnailResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/media/TiThumbnailRetriever;->getBitmap([IILti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;)V

    .line 731
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 96
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 98
    .local v0, "oldActivity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_3

    .line 99
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "oldActivity":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 103
    :cond_0
    :goto_0
    iput-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    .line 105
    :cond_1
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 106
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 107
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    .line 112
    :cond_2
    :goto_1
    return-void

    .line 100
    .restart local v0    # "oldActivity":Landroid/app/Activity;
    :cond_3
    instance-of v1, v0, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lti/modules/titanium/media/TiVideoActivity;

    .end local v0    # "oldActivity":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Lti/modules/titanium/media/TiVideoActivity;->setOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    goto :goto_0

    .line 108
    :cond_4
    instance-of v1, p1, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 109
    check-cast v1, Lti/modules/titanium/media/TiVideoActivity;

    invoke-virtual {v1, p0}, Lti/modules/titanium/media/TiVideoActivity;->setOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 110
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method public setCurrentPlaybackTime(I)V
    .locals 4
    .param p1, "milliseconds"    # I

    .prologue
    .line 511
    const-string v1, "VideoPlayerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPlaybackTime("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 514
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lti/modules/titanium/media/TiUIVideoView;->seek(I)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x526

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 518
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 519
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setMediaControlStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 414
    iget v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 415
    .local v0, "alert":Z
    :goto_0
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    .line 416
    if-eqz v0, :cond_0

    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 417
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lti/modules/titanium/media/TiUIVideoView;->setMediaControlStyle(I)V

    .line 423
    :cond_0
    :goto_1
    return-void

    .line 414
    .end local v0    # "alert":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    .restart local v0    # "alert":Z
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x524

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public setMovieControlMode(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 435
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlMode is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->setMediaControlStyle(I)V

    .line 437
    return-void
.end method

.method public setMovieControlStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 455
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlStyle is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->setMediaControlStyle(I)V

    .line 457
    return-void
.end method

.method public setScalingMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 468
    iget v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 469
    .local v0, "alert":Z
    :goto_0
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    .line 470
    if-eqz v0, :cond_0

    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 471
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lti/modules/titanium/media/TiUIVideoView;->setScalingMode(I)V

    .line 477
    :cond_0
    :goto_1
    return-void

    .line 468
    .end local v0    # "alert":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    .restart local v0    # "alert":Z
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x525

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public start()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->play()V

    .line 275
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x522

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 288
    return-void
.end method
