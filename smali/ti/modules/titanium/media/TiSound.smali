.class public Lti/modules/titanium/media/TiSound;
.super Ljava/lang/Object;
.source "TiSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final EVENT_CHANGE:Ljava/lang/String; = "change"

.field public static final EVENT_COMPLETE:Ljava/lang/String; = "complete"

.field public static final EVENT_COMPLETE_JSON:Ljava/lang/String; = "{ type : \'complete\' }"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_PROGRESS:Ljava/lang/String; = "progress"

.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_BUFFERING_DESC:Ljava/lang/String; = "buffering"

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_INITIALIZED_DESC:Ljava/lang/String; = "initialized"

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PAUSED_DESC:Ljava/lang/String; = "paused"

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PLAYING_DESC:Ljava/lang/String; = "playing"

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STARTING_DESC:Ljava/lang/String; = "starting"

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPED_DESC:Ljava/lang/String; = "stopped"

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_STOPPING_DESC:Ljava/lang/String; = "stopping"

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_DATA_DESC:Ljava/lang/String; = "waiting for data"

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8

.field public static final STATE_WAITING_FOR_QUEUE_DESC:Ljava/lang/String; = "waiting for queue"

.field private static final TAG:Ljava/lang/String; = "TiSound"


# instance fields
.field private looping:Z

.field protected mp:Landroid/media/MediaPlayer;

.field private pausePending:Z

.field private paused:Z

.field protected playOnResume:Z

.field private playPending:Z

.field private prepareRequired:Z

.field protected progressTimer:Ljava/util/Timer;

.field protected proxy:Lorg/appcelerator/kroll/KrollProxy;

.field protected remote:Z

.field private stopPending:Z

.field protected volume:F


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 66
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 75
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->pausePending:Z

    .line 76
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->stopPending:Z

    .line 77
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    .line 78
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->prepareRequired:Z

    .line 82
    iput-object p1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 83
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 84
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    .line 85
    return-void
.end method

.method static synthetic access$002(Lti/modules/titanium/media/TiSound;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/TiSound;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    return p1
.end method

.method static synthetic access$100(Lti/modules/titanium/media/TiSound;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/TiSound;

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->stopPending:Z

    return v0
.end method

.method static synthetic access$102(Lti/modules/titanium/media/TiSound;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/TiSound;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/media/TiSound;->stopPending:Z

    return p1
.end method

.method static synthetic access$200(Lti/modules/titanium/media/TiSound;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/TiSound;

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->pausePending:Z

    return v0
.end method

.method static synthetic access$202(Lti/modules/titanium/media/TiSound;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/TiSound;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/media/TiSound;->pausePending:Z

    return p1
.end method

.method static synthetic access$300(Lti/modules/titanium/media/TiSound;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/TiSound;

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startPlaying()V

    return-void
.end method

.method private prepareAndPlay()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 232
    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->prepareRequired:Z

    .line 233
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    .line 235
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lti/modules/titanium/media/TiSound$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/TiSound$1;-><init>(Lti/modules/titanium/media/TiSound;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 250
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 256
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 253
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 254
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startPlaying()V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 377
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    const-string v1, ""

    .line 380
    .local v1, "stateDescription":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 410
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "stateDescription"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    const-string v2, "TiSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 414
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 418
    return-void

    .line 382
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :pswitch_0
    const-string v1, "buffering"

    .line 383
    goto :goto_0

    .line 385
    :pswitch_1
    const-string v1, "initialized"

    .line 386
    goto :goto_0

    .line 388
    :pswitch_2
    const-string v1, "paused"

    .line 389
    goto :goto_0

    .line 391
    :pswitch_3
    const-string v1, "playing"

    .line 392
    goto :goto_0

    .line 394
    :pswitch_4
    const-string v1, "starting"

    .line 395
    goto :goto_0

    .line 397
    :pswitch_5
    const-string v1, "stopped"

    .line 398
    goto :goto_0

    .line 400
    :pswitch_6
    const-string v1, "stopping"

    .line 401
    goto :goto_0

    .line 403
    :pswitch_7
    const-string v1, "waiting for data"

    .line 404
    goto :goto_0

    .line 406
    :pswitch_8
    const-string v1, "waiting for queue"

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private startPlaying()V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    if-nez v0, :cond_0

    .line 609
    const-string v0, "TiSound"

    const-string v1, "audio is not playing, starting."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v0, "TiSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play: Volume set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 613
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startProgressTimer()V

    .line 615
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 617
    :cond_1
    return-void
.end method

.method private startProgressTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    .line 509
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    .line 516
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lti/modules/titanium/media/TiSound$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/TiSound$2;-><init>(Lti/modules/titanium/media/TiSound;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 532
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 513
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private stopProgressTimer()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    .line 540
    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "duration":I
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 337
    :cond_0
    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "time":I
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 350
    :goto_0
    return v0

    .line 347
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected initializeAndPlay()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 93
    .local v18, "url":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v13

    .line 94
    .local v13, "isAsset":Z
    if-nez v13, :cond_0

    const-string v2, "android.resource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 96
    .local v9, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 98
    .local v8, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v13, :cond_3

    .line 99
    :try_start_1
    const-string v2, "file:///android_asset/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "path":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 107
    .end local v15    # "path":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v8, :cond_1

    .line 112
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 142
    .end local v8    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "context":Landroid/content/Context;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "looping"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "loop":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 144
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lti/modules/titanium/media/TiSound;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v2, :cond_9

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 155
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lti/modules/titanium/media/TiSound;->playPending:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    .end local v13    # "isAsset":Z
    .end local v14    # "loop":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :goto_2
    return-void

    .line 102
    .restart local v8    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "isAsset":Z
    .restart local v18    # "url":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 103
    .local v17, "uri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    goto/16 :goto_0

    .line 108
    .end local v17    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 109
    .local v10, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "TiSound"

    const-string v3, "Error setting file descriptor: "

    invoke-static {v2, v3, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    if-eqz v8, :cond_1

    .line 112
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 166
    .end local v8    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "isAsset":Z
    .end local v18    # "url":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 167
    .local v16, "t":Ljava/lang/Throwable;
    const-string v2, "TiSound"

    const-string v3, "Issue while initializing : "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 169
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lti/modules/titanium/media/TiSound;->setState(I)V

    goto :goto_2

    .line 111
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v8    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "isAsset":Z
    .restart local v18    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 112
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v2

    .line 116
    .end local v8    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "context":Landroid/content/Context;
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 117
    .restart local v17    # "uri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 124
    :cond_6
    const/4 v11, 0x0

    .line 126
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 127
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 131
    if-eqz v12, :cond_b

    .line 132
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v10

    .line 129
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_a
    const-string v2, "TiSound"

    const-string v3, "Error setting file descriptor: "

    invoke-static {v2, v3, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 131
    if-eqz v11, :cond_1

    .line 132
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    .line 131
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v11, :cond_7

    .line 132
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_7
    throw v2

    .line 137
    .end local v11    # "fis":Ljava/io/FileInputStream;
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lti/modules/titanium/media/TiSound;->remote:Z

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    .end local v17    # "uri":Landroid/net/Uri;
    .restart local v14    # "loop":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 158
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget v2, v0, Lti/modules/titanium/media/TiSound;->volume:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 163
    :cond_a
    invoke-direct/range {p0 .. p0}, Lti/modules/titanium/media/TiSound;->startPlaying()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    .line 131
    .end local v14    # "loop":Ljava/lang/String;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v2

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 128
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :cond_b
    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "result":Z
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 189
    :cond_0
    return v0
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 574
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 577
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 504
    const-string v0, "TiSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 447
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 448
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 449
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "complete"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 451
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 547
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 551
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 483
    move v0, p2

    .line 484
    .local v0, "code":I
    if-nez p2, :cond_0

    .line 485
    const/4 v0, -0x1

    .line 487
    :cond_0
    const-string v2, "Unknown media error."

    .line 488
    .local v2, "msg":Ljava/lang/String;
    const/16 v3, 0x64

    if-ne p2, v3, :cond_1

    .line 489
    const-string v2, "Media server died"

    .line 491
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 493
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 494
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v0, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 495
    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v3, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "error"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 498
    const/4 v3, 0x1

    return v3
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 456
    const-string v1, "Unknown media issue."

    .line 458
    .local v1, "msg":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 473
    :goto_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 474
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 475
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "error"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 477
    const/4 v2, 0x1

    return v2

    .line 460
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :sswitch_0
    const-string v1, "Stream not interleaved or interleaved improperly."

    .line 461
    goto :goto_0

    .line 463
    :sswitch_1
    const-string v1, "Stream does not support seeking"

    .line 464
    goto :goto_0

    .line 466
    :sswitch_2
    const-string v1, "Unknown media issue"

    .line 467
    goto :goto_0

    .line 469
    :sswitch_3
    const-string v1, "Video is too complex for decoder, video lagging."

    goto :goto_0

    .line 458
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 561
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 622
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 623
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 624
    iget v1, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 625
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 628
    :cond_0
    iput-boolean v3, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    .line 629
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->pausePending:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->stopPending:Z

    if-nez v1, :cond_1

    .line 631
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startPlaying()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lti/modules/titanium/media/TiSound;->pausePending:Z

    .line 638
    iput-boolean v3, p0, Lti/modules/titanium/media/TiSound;->stopPending:Z

    .line 639
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while playing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->reset()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 566
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 571
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const-string v1, "TiSound"

    const-string v2, "audio is playing, pause"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 199
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 201
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->pausePending:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while pausing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 215
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 216
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->initializeAndPlay()V

    .line 228
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->prepareRequired:Z

    if-eqz v1, :cond_1

    .line 219
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->prepareAndPlay()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while playing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->reset()V

    goto :goto_0

    .line 221
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startPlaying()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 582
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "volume"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 585
    :cond_0
    return-void
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p2, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 601
    .local v0, "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lti/modules/titanium/media/TiSound;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 603
    .end local v0    # "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 590
    const-string v0, "volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 279
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 280
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 281
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 282
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 283
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 285
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 287
    const-string v1, "TiSound"

    const-string v2, "Native resources released."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while releasing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 264
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 265
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 268
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while resetting : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 3
    .param p1, "loop"    # Z

    .prologue
    .line 298
    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    if-eq p1, v1, :cond_1

    .line 299
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 302
    :cond_0
    iput-boolean p1, p0, Lti/modules/titanium/media/TiSound;->looping:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while configuring looping : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTime(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 355
    if-gez p1, :cond_0

    .line 356
    const/4 p1, 0x0

    .line 359
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 361
    .local v0, "duration":I
    if-le p1, v0, :cond_1

    .line 362
    move p1, v0

    .line 366
    :cond_1
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "duration":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    return-void

    .line 367
    .restart local v0    # "duration":I
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "TiSound"

    const-string v3, "Error calling seekTo() in an incorrect state. Ignoring."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 6
    .param p1, "volume"    # F

    .prologue
    const/4 v2, 0x0

    .line 312
    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 313
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 314
    const-string v2, "TiSound"

    const-string v3, "Attempt to set volume less than 0.0. Volume set to 0.0"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 323
    iget v0, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 324
    .local v0, "scaledVolume":F
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 329
    .end local v0    # "scaledVolume":F
    :cond_0
    :goto_1
    return-void

    .line 315
    :cond_1
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 316
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 317
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "volume"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    const-string v2, "TiSound"

    const-string v3, "Attempt to set volume greater than 1.0. Volume set to 1.0"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiSound"

    const-string v3, "Issue while setting volume : "

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 320
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iput p1, p0, Lti/modules/titanium/media/TiSound;->volume:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    :cond_0
    const-string v1, "TiSound"

    const-string v2, "audio is playing, stop()"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 428
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 429
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 430
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->prepareRequired:Z

    .line 436
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 443
    :cond_2
    :goto_1
    return-void

    .line 432
    :cond_3
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->playPending:Z

    if-eqz v1, :cond_1

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->stopPending:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
