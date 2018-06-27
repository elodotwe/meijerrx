.class public abstract Lorg/appcelerator/kroll/KrollRuntime;
.super Ljava/lang/Object;
.source "KrollRuntime.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;,
        Lorg/appcelerator/kroll/KrollRuntime$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_THREAD_STACK_SIZE:I = 0x4000

.field public static final DONT_INTERCEPT:I = -0x7fffffff

.field private static final MSG_DISPOSE:I = 0x65

.field private static final MSG_EVAL_STRING:I = 0x67

.field private static final MSG_INIT:I = 0x64

.field public static final MSG_LAST_ID:I = 0xca

.field private static final MSG_RUN_MODULE:I = 0x66

.field private static final PROPERTY_FILENAME:Ljava/lang/String; = "filename"

.field private static final PROPERTY_SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_ANONYMOUS:Ljava/lang/String; = "<anonymous>"

.field private static final TAG:Ljava/lang/String; = "KrollRuntime"

.field public static final UNDEFINED:Ljava/lang/Object;

.field private static activityRefCount:I

.field private static instance:Lorg/appcelerator/kroll/KrollRuntime;

.field private static runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

.field private static serviceReceiverRefCount:I


# instance fields
.field private evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

.field private exceptionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private krollApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/kroll/KrollApplication;",
            ">;"
        }
    .end annotation
.end field

.field private primaryExceptionHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;

.field private thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 48
    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    .line 61
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 67
    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$1;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollRuntime$1;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 78
    return-void
.end method

.method static synthetic access$002(Lorg/appcelerator/kroll/KrollRuntime;J)J
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/kroll/KrollRuntime;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    return-wide p1
.end method

.method public static addAdditionalExceptionHandler(Lorg/appcelerator/kroll/KrollExceptionHandler;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Lorg/appcelerator/kroll/KrollExceptionHandler;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 487
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 488
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    return-void
.end method

.method public static decrementActivityRefCount(Z)V
    .locals 2
    .param p0, "willDisposeRuntime"    # Z

    .prologue
    .line 358
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 359
    if-nez p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->dispose()V

    goto :goto_0
.end method

.method public static decrementServiceReceiverRefCount()V
    .locals 2

    .prologue
    .line 385
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    .line 386
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->dispose()V

    goto :goto_0
.end method

.method public static decrementServiceRefCount()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const-string v0, "KrollRuntime"

    const-string v1, "decrementServiceRefCount() is deprecated.  Please use decrementServiceReceiverRefCount() instead."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->decrementServiceReceiverRefCount()V

    .line 413
    return-void
.end method

.method public static dispatchException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 12
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceName"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "lineSource"    # Ljava/lang/String;
    .param p5, "lineOffset"    # I

    .prologue
    .line 507
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_2

    .line 508
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v8, v0, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    .line 511
    .local v8, "handlers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollExceptionHandler;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 513
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollExceptionHandler;

    .line 514
    .local v7, "currentHandler":Lorg/appcelerator/kroll/KrollExceptionHandler;
    if-eqz v7, :cond_0

    .line 515
    new-instance v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v7, v0}, Lorg/appcelerator/kroll/KrollExceptionHandler;->handleException(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    goto :goto_0

    .line 522
    .end local v7    # "currentHandler":Lorg/appcelerator/kroll/KrollExceptionHandler;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v11, v0, Lorg/appcelerator/kroll/KrollRuntime;->primaryExceptionHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;

    new-instance v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v11, v0}, Lorg/appcelerator/kroll/KrollExceptionHandler;->handleException(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 525
    .end local v8    # "handlers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollExceptionHandler;>;"
    :cond_2
    return-void
.end method

.method public static getActivityRefCount()I
    .locals 1

    .prologue
    .line 371
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    return v0
.end method

.method public static getInstance()Lorg/appcelerator/kroll/KrollRuntime;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    return-object v0
.end method

.method public static getServiceReceiverRefCount()I
    .locals 1

    .prologue
    .line 395
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    return v0
.end method

.method public static getServiceRefCount()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    const-string v0, "KrollRuntime"

    const-string v1, "getServiceRefCount() is deprecated.  Please use getServiceReceiverRefCount() instead."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getServiceReceiverRefCount()I

    move-result v0

    return v0
.end method

.method public static incrementActivityRefCount()V
    .locals 2

    .prologue
    .line 350
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 351
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->syncInit()V

    .line 354
    :cond_0
    return-void
.end method

.method public static incrementServiceReceiverRefCount()V
    .locals 2

    .prologue
    .line 377
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    .line 378
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->syncInit()V

    .line 381
    :cond_0
    return-void
.end method

.method public static incrementServiceRefCount()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    const-string v0, "KrollRuntime"

    const-string v1, "incrementServiceRefCount() is deprecated.  Please use incrementServiceReceiverRefCount() instead."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementServiceReceiverRefCount()V

    .line 405
    return-void
.end method

.method public static init(Landroid/content/Context;Lorg/appcelerator/kroll/KrollRuntime;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runtime"    # Lorg/appcelerator/kroll/KrollRuntime;

    .prologue
    .line 119
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-eq v1, v2, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Lorg/appcelerator/kroll/KrollRuntime;->getThreadStackSize(Landroid/content/Context;)I

    move-result v0

    .line 121
    .local v0, "stackSize":I
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v1, p0

    check-cast v1, Lorg/appcelerator/kroll/KrollApplication;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    .line 122
    new-instance v1, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    invoke-direct {v1, p1, v0}, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;-><init>(Lorg/appcelerator/kroll/KrollRuntime;I)V

    iput-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    .line 125
    sput-object p1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    .line 126
    iget-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->start()V

    .line 129
    .end local v0    # "stackSize":I
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->init(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private internalDispose()V
    .locals 4

    .prologue
    .line 424
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v2

    .line 425
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v3, Lorg/appcelerator/kroll/KrollRuntime$State;->RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v1, v3, :cond_1

    .line 428
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 429
    monitor-exit v2

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 433
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->doDispose()V

    .line 437
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 438
    .local v0, "app":Lorg/appcelerator/kroll/KrollApplication;
    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->dispose()V

    goto :goto_0

    .line 433
    .end local v0    # "app":Lorg/appcelerator/kroll/KrollApplication;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isDisposed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 156
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v3, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v2, v3, :cond_1

    :goto_0
    monitor-exit v1

    .line 161
    :cond_0
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v1, :cond_1

    .line 147
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v3, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    .line 151
    :cond_1
    return v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeExceptionHandler(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 499
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 500
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_0
    return-void
.end method

.method public static setPrimaryExceptionHandler(Lorg/appcelerator/kroll/KrollExceptionHandler;)V
    .locals 1
    .param p0, "handler"    # Lorg/appcelerator/kroll/KrollExceptionHandler;

    .prologue
    .line 472
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iput-object p0, v0, Lorg/appcelerator/kroll/KrollRuntime;->primaryExceptionHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;

    .line 475
    :cond_0
    return-void
.end method

.method public static suggestGC()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->setGCFlag()V

    .line 142
    :cond_0
    return-void
.end method

.method private static syncInit()V
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->waitForInit()V

    .line 331
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 332
    :try_start_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v0, v2, :cond_1

    .line 333
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 334
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->waitForInit()V

    .line 342
    return-void

    .line 336
    :cond_1
    :try_start_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime$State;->RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v0, v2, :cond_0

    .line 337
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static waitForInit()V
    .locals 3

    .prologue
    .line 318
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v1, v1, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 319
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "KrollRuntime"

    const-string v2, "Interrupted while waiting for runtime to initialize"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 197
    const-string v1, "KrollRuntime"

    const-string v2, "Disposing runtime."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v2

    .line 201
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 202
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 206
    .local v0, "app":Lorg/appcelerator/kroll/KrollApplication;
    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->cancelTimers()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;->internalDispose()V

    .line 216
    :goto_0
    return-void

    .line 202
    .end local v0    # "app":Lorg/appcelerator/kroll/KrollApplication;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 214
    .restart local v0    # "app":Lorg/appcelerator/kroll/KrollApplication;
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public abstract doDispose()V
.end method

.method public abstract doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->initRuntime()V

    .line 188
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method

.method public evalString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "<anonymous>"

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/kroll/KrollRuntime;->evalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollRuntime;->doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEvaluator()Lorg/appcelerator/kroll/KrollEvaluator;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

    return-object v0
.end method

.method public getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getRuntimeName()Ljava/lang/String;
.end method

.method public getRuntimeState()Lorg/appcelerator/kroll/KrollRuntime$State;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    return-wide v0
.end method

.method public getThreadStackSize(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    instance-of v1, p1, Lorg/appcelerator/kroll/KrollApplication;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 276
    .local v0, "app":Lorg/appcelerator/kroll/KrollApplication;
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->getThreadStackSize()I

    move-result v1

    .line 278
    .end local v0    # "app":Lorg/appcelerator/kroll/KrollApplication;
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x4000

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 283
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 312
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->doInit()V

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;->internalDispose()V

    goto :goto_0

    .line 295
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "filename":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollProxySupport;

    .line 299
    .local v0, "activityProxy":Lorg/appcelerator/kroll/KrollProxySupport;
    invoke-virtual {p0, v2, v1, v0}, Lorg/appcelerator/kroll/KrollRuntime;->doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    goto :goto_0

    .line 304
    .end local v0    # "activityProxy":Lorg/appcelerator/kroll/KrollProxySupport;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "source":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "source":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "filename":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lorg/appcelerator/kroll/KrollRuntime;->doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method

.method public abstract initRuntime()V
.end method

.method public isRuntimeThread()Z
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "activityProxy"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollRuntime;->doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setEvaluator(Lorg/appcelerator/kroll/KrollEvaluator;)V
    .locals 0
    .param p1, "eval"    # Lorg/appcelerator/kroll/KrollEvaluator;

    .prologue
    .line 450
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollRuntime;->evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

    .line 451
    return-void
.end method

.method public setGCFlag()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method
