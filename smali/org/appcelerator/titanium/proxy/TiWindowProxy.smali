.class public abstract Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE:I = 0x139

.field private static final MSG_FIRST_ID:I = 0xd4

.field protected static final MSG_LAST_ID:I = 0x4bb

.field private static final MSG_OPEN:I = 0x138

.field private static final TAG:Ljava/lang/String; = "TiWindowProxy"

.field private static waitingForOpen:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiWindowProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected focused:Z

.field protected inTab:Z

.field protected opened:Z

.field protected opening:Z

.field protected orientationModes:[I

.field protected postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

.field private proxiesWaitingForActivity:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected windowActivityCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 51
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->proxiesWaitingForActivity:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 60
    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->windowActivityCreated:Z

    .line 76
    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->inTab:Z

    .line 77
    return-void
.end method

.method public static getWaitingForOpen()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    goto :goto_0
.end method


# virtual methods
.method public addProxyWaitingForActivity(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "waitingProxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->proxiesWaitingForActivity:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 197
    return-void
.end method

.method public close(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "options":Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 150
    .local v0, "animation":Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_2

    .line 151
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 152
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 163
    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    .line 169
    :goto_1
    return-void

    .line 154
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_0

    .line 155
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 156
    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "_anim"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0

    .line 168
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x139

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public closeFromActivity(Z)V
    .locals 3
    .param p1, "activityIsFinishing"    # Z

    .prologue
    .line 173
    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 186
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->activity:Ljava/lang/ref/WeakReference;

    .line 192
    const-string v1, "close"

    invoke-virtual {p0, v1, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViewsForActivityForcedToDestroy()V

    .line 183
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 184
    .restart local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "_closeFromActivityForcedToDestroy"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows are created during open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 466
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiOrientationHelper;->convertRotationToTiOrientationMode(I)I

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 471
    :cond_0
    const-string v1, "TiWindowProxy"

    const-string v2, "Unable to get orientation, activity not found for window"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrientationModes()[I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    return-object v0
.end method

.method public getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    instance-of v0, v0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 482
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public getTabGroupProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method protected abstract getWindowActivity()Landroid/app/Activity;
.end method

.method public getWindowActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract handleClose(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 90
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 91
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    .line 92
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 93
    goto :goto_0

    .line 96
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 97
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    .line 98
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 99
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method protected handlePostOpen()V
    .locals 3

    .prologue
    .line 438
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 449
    const/4 v1, 0x0

    sput-object v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    .line 452
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "nativeView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 459
    :cond_2
    return-void
.end method

.method public handleToImage()Lorg/appcelerator/titanium/TiBlob;
    .locals 3

    .prologue
    .line 240
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 241
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getImageFromDict(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v1

    return-object v1
.end method

.method public onWindowActivityCreated()V
    .locals 7

    .prologue
    .line 249
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->windowActivityCreated:Z

    .line 251
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->proxiesWaitingForActivity:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 252
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->proxiesWaitingForActivity:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .local v1, "proxy":Lorg/appcelerator/kroll/KrollProxy;
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollProxy;->attachActivityLifecycle(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiWindowProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error attaching activity to proxy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "proxy":Lorg/appcelerator/kroll/KrollProxy;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    if-eqz v3, :cond_1

    .line 264
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 266
    :cond_1
    return-void
.end method

.method public onWindowFocusChange(Z)V
    .locals 3
    .param p1, "focused"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    const-string v0, "focus"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 278
    return-void

    .line 277
    :cond_0
    const-string v0, "blur"

    goto :goto_0
.end method

.method public open(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 110
    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    if-eqz v2, :cond_1

    .line 140
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "options":Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 117
    .local v0, "animation":Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_5

    .line 118
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 119
    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 133
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 121
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 122
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 124
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_2

    .line 125
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 126
    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "_anim"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_5
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 138
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x138

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected releaseViewsForActivityForcedToDestroy()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 202
    return-void
.end method

.method public setLeftNavButton(Ljava/lang/Object;)V
    .locals 2
    .param p1, "button"    # Ljava/lang/Object;

    .prologue
    .line 283
    const-string v0, "TiWindowProxy"

    const-string v1, "setLeftNavButton not supported in Android"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public setOrientationModes([I)V
    .locals 11
    .param p1, "modes"    # [I

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x9

    .line 289
    const/4 v1, -0x1

    .line 290
    .local v1, "activityOrientationMode":I
    const/4 v4, 0x0

    .line 291
    .local v4, "hasPortrait":Z
    const/4 v5, 0x0

    .line 292
    .local v5, "hasPortraitReverse":Z
    const/4 v2, 0x0

    .line 293
    .local v2, "hasLandscape":Z
    const/4 v3, 0x0

    .line 296
    .local v3, "hasLandscapeReverse":Z
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 298
    if-eqz p1, :cond_13

    .line 301
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 303
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 305
    const/4 v4, 0x1

    .line 301
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 309
    const/4 v5, 0x1

    goto :goto_1

    .line 311
    :cond_2
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 313
    const/4 v2, 0x1

    goto :goto_1

    .line 315
    :cond_3
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 317
    const/4 v3, 0x1

    goto :goto_1

    .line 322
    :cond_4
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v7, v7

    if-nez v7, :cond_7

    .line 324
    const/4 v1, 0x4

    .line 377
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getWindowActivity()Landroid/app/Activity;

    move-result-object v0

    .line 380
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    iget-boolean v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->windowActivityCreated:Z

    if-eqz v7, :cond_6

    .line 382
    if-eq v1, v10, :cond_12

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 403
    .end local v6    # "i":I
    :cond_6
    :goto_3
    return-void

    .line 326
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v6    # "i":I
    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    .line 328
    :cond_9
    const/4 v1, 0x4

    goto :goto_2

    .line 330
    :cond_a
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 336
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_b

    .line 338
    const/4 v1, 0x7

    goto :goto_2

    .line 342
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 345
    :cond_c
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 351
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_d

    .line 353
    const/4 v1, 0x6

    goto :goto_2

    .line 357
    :cond_d
    const/4 v1, 0x0

    goto :goto_2

    .line 360
    :cond_e
    if-eqz v4, :cond_f

    .line 362
    const/4 v1, 0x1

    goto :goto_2

    .line 364
    :cond_f
    if-eqz v5, :cond_10

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_10

    .line 366
    const/16 v1, 0x9

    goto :goto_2

    .line 368
    :cond_10
    if-eqz v2, :cond_11

    .line 370
    const/4 v1, 0x0

    goto :goto_2

    .line 372
    :cond_11
    if-eqz v3, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_5

    .line 374
    const/16 v1, 0x8

    goto :goto_2

    .line 388
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_12
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 394
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v6    # "i":I
    :cond_13
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 395
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 397
    instance-of v7, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v7, :cond_6

    move-object v7, v0

    .line 399
    check-cast v7, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getOriginalOrientationMode()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method public setPostOpenListener(Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    .line 236
    return-void
.end method

.method public setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "tabGroupProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 224
    return-void
.end method

.method public setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "tabProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 209
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 210
    return-void
.end method
