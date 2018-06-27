.class public Lti/modules/titanium/platform/DisplayCapsProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "DisplayCapsProxy.java"


# instance fields
.field private final dm:Landroid/util/DisplayMetrics;

.field private softDisplay:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 28
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;-><init>()V

    .line 34
    return-void
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    .line 42
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    return-object v0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "Ti.Platform.DisplayCaps"

    return-object v0
.end method

.method public getDensity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 87
    const-string v0, "medium"

    monitor-exit v1

    :goto_0
    return-object v0

    .line 67
    :sswitch_0
    const-string v0, "high"

    monitor-exit v1

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :sswitch_1
    :try_start_1
    const-string v0, "medium"

    monitor-exit v1

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "high"

    monitor-exit v1

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v0, "xhigh"

    monitor-exit v1

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "xhigh"

    monitor-exit v1

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v0, "xxhigh"

    monitor-exit v1

    goto :goto_0

    .line 79
    :sswitch_6
    const-string v0, "xxhigh"

    monitor-exit v1

    goto :goto_0

    .line 81
    :sswitch_7
    const-string v0, "xxxhigh"

    monitor-exit v1

    goto :goto_0

    .line 83
    :sswitch_8
    const-string v0, "xxxhigh"

    monitor-exit v1

    goto :goto_0

    .line 85
    :sswitch_9
    const-string v0, "low"

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_9
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_0
        0x118 -> :sswitch_3
        0x140 -> :sswitch_4
        0x190 -> :sswitch_5
        0x1e0 -> :sswitch_6
        0x230 -> :sswitch_7
        0x280 -> :sswitch_8
    .end sparse-switch
.end method

.method public getDpi()F
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    monitor-exit v1

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogicalDensityFactor()F
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    monitor-exit v1

    return v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlatformHeight()I
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    monitor-exit v1

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlatformWidth()I
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    monitor-exit v1

    return v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getXdpi()F
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    monitor-exit v1

    return v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getYdpi()F
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 111
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    monitor-exit v1

    return v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
