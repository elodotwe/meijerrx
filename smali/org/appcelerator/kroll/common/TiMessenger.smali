.class public Lorg/appcelerator/kroll/common/TiMessenger;
.super Ljava/lang/Object;
.source "TiMessenger.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x32

.field private static final MSG_RUN:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "TiMessenger"

.field protected static mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

.field protected static runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

.field protected static threadLocalMessenger:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/appcelerator/kroll/common/TiMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blockingLatch:Ljava/util/concurrent/CountDownLatch;

.field protected blockingMessageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected callback:Landroid/os/Handler$Callback;

.field protected creationThreadId:J

.field protected handler:Landroid/os/Handler;

.field protected looper:Landroid/os/Looper;

.field protected messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/appcelerator/kroll/common/TiMessenger$1;

    invoke-direct {v0}, Lorg/appcelerator/kroll/common/TiMessenger$1;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->blockingMessageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->creationThreadId:J

    .line 208
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->looper:Landroid/os/Looper;

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->handler:Landroid/os/Handler;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lorg/appcelerator/kroll/common/TiMessenger$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/appcelerator/kroll/common/TiMessenger$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/appcelerator/kroll/common/TiMessenger;-><init>()V

    return-void
.end method

.method public static getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    return-object v0
.end method

.method public static getMessenger()Lorg/appcelerator/kroll/common/TiMessenger;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiMessenger;

    return-object v0
.end method

.method public static getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    return-object v0
.end method

.method public static postOnMain(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "TiMessenger"

    const-string v1, "Unable to post runnable on main thread, main messenger is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    iget-object v0, v0, Lorg/appcelerator/kroll/common/TiMessenger;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static postOnRuntime(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "TiMessenger"

    const-string v1, "Unable to post runnable on runtime thread, runtime messenger is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    iget-object v0, v0, Lorg/appcelerator/kroll/common/TiMessenger;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 6
    .param p0, "message"    # Landroid/os/Message;

    .prologue
    .line 145
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiMessenger;

    sget-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "asyncArg"    # Ljava/lang/Object;

    .prologue
    .line 159
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiMessenger;

    sget-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "targetMessenger"    # Lorg/appcelerator/kroll/common/TiMessenger;
    .param p3, "asyncArg"    # Ljava/lang/Object;
    .param p4, "maxTimeout"    # J

    .prologue
    .line 239
    new-instance v1, Lorg/appcelerator/kroll/common/TiMessenger$2;

    invoke-direct {v1, p0, p3, p4, p5}, Lorg/appcelerator/kroll/common/TiMessenger$2;-><init>(Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)V

    .line 282
    .local v1, "wrappedAsyncResult":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger;->blockingMessageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 283
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    invoke-virtual {p2, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendMessage(Landroid/os/Message;)V

    .line 286
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, "messageResult":Ljava/lang/Object;
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger;->blockingMessageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 288
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchPendingMessages()V

    .line 290
    return-object v0
.end method

.method public static sendBlockingRuntimeMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 6
    .param p0, "message"    # Landroid/os/Message;

    .prologue
    .line 172
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiMessenger;

    sget-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "asyncArg"    # Ljava/lang/Object;

    .prologue
    .line 186
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiMessenger;

    sget-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "asyncArg"    # Ljava/lang/Object;
    .param p2, "maxTimeout"    # J

    .prologue
    .line 202
    sget-object v0, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiMessenger;

    sget-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchMessage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 384
    .local v0, "message":Landroid/os/Message;
    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v1

    .line 388
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 390
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 391
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispatchMessage(ILjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v1, 0x0

    .line 400
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 401
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 402
    const-string v2, "TiMessenger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 406
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    const/4 v1, 0x1

    .line 416
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 413
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dispatchPendingMessages()V
    .locals 1

    .prologue
    .line 374
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 351
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->callback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->callback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->blockingMessageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendMessage(Landroid/os/Message;)V

    .line 339
    return-void
.end method

.method public resetLatch()V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/common/TiMessenger;->blockingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 364
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    .line 310
    .local v3, "target":Landroid/os/Handler;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 311
    .local v0, "currentThreadId":J
    const-wide/16 v4, -0x1

    .line 313
    .local v4, "targetThreadId":J
    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 317
    :cond_0
    if-eqz v3, :cond_1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 318
    invoke-virtual {v3, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 334
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiMessenger;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiMessenger;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v6, "TiMessenger"

    const-string v7, "Interrupted trying to put new message, sending to handler"

    invoke-static {v6, v7, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 331
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 343
    iput-object p1, p0, Lorg/appcelerator/kroll/common/TiMessenger;->callback:Landroid/os/Handler$Callback;

    .line 344
    return-void
.end method
