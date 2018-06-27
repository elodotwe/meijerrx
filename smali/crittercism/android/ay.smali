.class public final Lcrittercism/android/ay;
.super Lcom/crittercism/app/Transaction;

# interfaces
.implements Lcrittercism/android/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ay$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static o:Ljava/util/List;

.field private static volatile p:J

.field private static volatile q:J

.field private static volatile r:Z

.field private static final s:[I

.field private static t:Lcrittercism/android/ay;

.field private static u:Lcrittercism/android/az;


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Lcrittercism/android/ay$a;

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    new-instance v0, Lcrittercism/android/dt;

    invoke-direct {v0}, Lcrittercism/android/dt;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    .line 64
    const/4 v0, 0x1

    new-instance v1, Lcrittercism/android/dt;

    invoke-direct {v1}, Lcrittercism/android/dt;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcrittercism/android/ay;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    .line 96
    sput-wide v2, Lcrittercism/android/ay;->p:J

    .line 97
    sput-wide v2, Lcrittercism/android/ay;->q:J

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcrittercism/android/ay;->r:Z

    .line 112
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcrittercism/android/ay;->s:[I

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    .line 141
    new-instance v0, Lcrittercism/android/az;

    invoke-direct {v0}, Lcrittercism/android/az;-><init>()V

    sput-object v0, Lcrittercism/android/ay;->u:Lcrittercism/android/az;

    return-void

    .line 112
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method public constructor <init>(Lcrittercism/android/ar;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0xff

    const/4 v0, -0x1

    .line 171
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    iput-wide v4, p0, Lcrittercism/android/ay;->e:J

    .line 72
    iput v0, p0, Lcrittercism/android/ay;->f:I

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 173
    const-string v1, "Transaction name exceeds 255 characters! Truncating to first 255 characters."

    invoke-static {v1}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    .line 180
    :goto_0
    sget-object v1, Lcrittercism/android/ay$a;->a:Lcrittercism/android/ay$a;

    iput-object v1, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcrittercism/android/ay;->k:Ljava/util/Map;

    .line 182
    iput-object p1, p0, Lcrittercism/android/ay;->a:Lcrittercism/android/ar;

    .line 183
    sget-object v1, Lcrittercism/android/by;->a:Lcrittercism/android/by;

    invoke-virtual {v1}, Lcrittercism/android/by;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/ay;->l:Ljava/lang/String;

    .line 189
    iput-wide v4, p0, Lcrittercism/android/ay;->e:J

    .line 193
    sget-object v1, Lcrittercism/android/ay;->u:Lcrittercism/android/az;

    iget-object v1, v1, Lcrittercism/android/az;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p0, Lcrittercism/android/ay;->f:I

    .line 198
    return-void

    .line 178
    :cond_1
    iput-object p2, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Lcrittercism/android/ay;)V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcrittercism/android/ay;->e:J

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/ay;->f:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 201
    iget-object v0, p1, Lcrittercism/android/ay;->d:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    .line 202
    iget-wide v0, p1, Lcrittercism/android/ay;->e:J

    iput-wide v0, p0, Lcrittercism/android/ay;->e:J

    .line 203
    iget v0, p1, Lcrittercism/android/ay;->f:I

    iput v0, p0, Lcrittercism/android/ay;->f:I

    .line 204
    iget-wide v0, p1, Lcrittercism/android/ay;->g:J

    iput-wide v0, p0, Lcrittercism/android/ay;->g:J

    .line 205
    iget-wide v0, p1, Lcrittercism/android/ay;->h:J

    iput-wide v0, p0, Lcrittercism/android/ay;->h:J

    .line 206
    iget-object v0, p1, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    iput-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 207
    iget-object v0, p1, Lcrittercism/android/ay;->k:Ljava/util/Map;

    iput-object v0, p0, Lcrittercism/android/ay;->k:Ljava/util/Map;

    .line 208
    iget-object v0, p1, Lcrittercism/android/ay;->l:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/ay;->l:Ljava/lang/String;

    .line 209
    iget-wide v0, p1, Lcrittercism/android/ay;->i:J

    iput-wide v0, p0, Lcrittercism/android/ay;->i:J

    .line 210
    iget-wide v0, p1, Lcrittercism/android/ay;->m:J

    iput-wide v0, p0, Lcrittercism/android/ay;->m:J

    .line 211
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 218
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcrittercism/android/ay;->e:J

    .line 72
    iput v4, p0, Lcrittercism/android/ay;->f:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    .line 220
    invoke-static {}, Lcrittercism/android/ay$a;->values()[Lcrittercism/android/ay$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 221
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcrittercism/android/ay;->e:J

    .line 222
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    iput v0, p0, Lcrittercism/android/ay;->f:I

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ay;->k:Ljava/util/Map;

    .line 224
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 226
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcrittercism/android/ay;->k:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Lcrittercism/android/dx;->a:Lcrittercism/android/dx;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/ay;->g:J

    .line 231
    sget-object v0, Lcrittercism/android/dx;->a:Lcrittercism/android/dx;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/ay;->h:J

    .line 233
    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcrittercism/android/ay;->i:J

    .line 235
    sget-object v0, Lcrittercism/android/by;->a:Lcrittercism/android/by;

    invoke-virtual {v0}, Lcrittercism/android/by;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ay;->l:Ljava/lang/String;

    .line 236
    return-void
.end method

.method static synthetic a(Lcrittercism/android/ay;)Lcrittercism/android/ay$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    return-object v0
.end method

.method public static a(Lcrittercism/android/ar;Z)Ljava/util/List;
    .locals 12

    .prologue
    .line 360
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 361
    sget-object v1, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v1

    .line 362
    :try_start_0
    sget-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 366
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 368
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 369
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ay;

    .line 370
    monitor-enter v0

    .line 371
    :try_start_1
    iget-object v3, v0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v8, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v3, v8, :cond_1

    .line 372
    iput-wide v4, v0, Lcrittercism/android/ay;->h:J

    .line 374
    sget-object v3, Lcrittercism/android/ay$a;->g:Lcrittercism/android/ay$a;

    iput-object v3, v0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 377
    invoke-static {}, Lcrittercism/android/ay;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    sget-wide v8, Lcrittercism/android/ay;->p:J

    iget-wide v10, v0, Lcrittercism/android/ay;->m:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 380
    iget-wide v10, v0, Lcrittercism/android/ay;->i:J

    sub-long v8, v6, v8

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcrittercism/android/ay;->i:J

    .line 385
    :cond_0
    :goto_1
    invoke-direct {v0}, Lcrittercism/android/ay;->u()V

    .line 386
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 383
    :cond_1
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 386
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 396
    :cond_2
    new-instance v0, Lcrittercism/android/ay$2;

    invoke-direct {v0, p0}, Lcrittercism/android/ay$2;-><init>(Lcrittercism/android/ar;)V

    .line 407
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 408
    sget-object v3, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3

    .line 409
    :try_start_3
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 410
    if-nez p1, :cond_3

    .line 411
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 415
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 419
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 426
    :goto_3
    return-object v2

    .line 413
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 415
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 420
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 422
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 732
    invoke-static {}, Lcrittercism/android/ay;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    sget-object v0, Lcrittercism/android/ay;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcrittercism/android/ay$5;

    invoke-direct {v1, p0}, Lcrittercism/android/ay$5;-><init>(Lcrittercism/android/ay;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 743
    :cond_0
    return-void
.end method

.method public static a(Lcrittercism/android/am;)V
    .locals 6

    .prologue
    .line 442
    :try_start_0
    invoke-interface {p0}, Lcrittercism/android/am;->w()Lcrittercism/android/bk;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcrittercism/android/bk;->c()Ljava/util/List;

    move-result-object v0

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bi;

    .line 446
    check-cast v0, Lcrittercism/android/br;

    .line 447
    invoke-virtual {v0}, Lcrittercism/android/br;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 448
    if-eqz v0, :cond_0

    .line 451
    :try_start_1
    new-instance v5, Lcrittercism/android/ay;

    invoke-direct {v5, v0}, Lcrittercism/android/ay;-><init>(Lorg/json/JSONArray;)V

    .line 452
    iput-wide v2, v5, Lcrittercism/android/ay;->h:J

    .line 453
    sget-object v0, Lcrittercism/android/ay$a;->h:Lcrittercism/android/ay$a;

    iput-object v0, v5, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 454
    invoke-interface {p0}, Lcrittercism/android/am;->x()Lcrittercism/android/bk;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 466
    :catch_1
    move-exception v0

    throw v0

    .line 458
    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 468
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    .line 471
    :goto_1
    return-void

    .line 465
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcrittercism/android/bk;->a()V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1
.end method

.method public static a(Lcrittercism/android/ar;)V
    .locals 10

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcrittercism/android/ay;->q:J

    .line 292
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 293
    sget-object v2, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v2

    .line 294
    :try_start_0
    sget-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ay;

    .line 298
    monitor-enter v0

    .line 299
    :try_start_1
    iget-object v3, v0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v4, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v3, v4, :cond_0

    .line 300
    iget-wide v4, v0, Lcrittercism/android/ay;->m:J

    sget-wide v6, Lcrittercism/android/ay;->p:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 309
    iget-wide v4, v0, Lcrittercism/android/ay;->m:J

    sget-wide v6, Lcrittercism/android/ay;->q:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 310
    iget-wide v4, v0, Lcrittercism/android/ay;->i:J

    sget-wide v6, Lcrittercism/android/ay;->q:J

    iget-wide v8, v0, Lcrittercism/android/ay;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcrittercism/android/ay;->i:J

    .line 318
    :cond_0
    :goto_1
    invoke-direct {v0}, Lcrittercism/android/ay;->u()V

    .line 319
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 295
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 315
    :cond_1
    :try_start_2
    iget-wide v4, v0, Lcrittercism/android/ay;->i:J

    sget-wide v6, Lcrittercism/android/ay;->q:J

    sget-wide v8, Lcrittercism/android/ay;->p:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcrittercism/android/ay;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 320
    :cond_2
    new-instance v0, Lcrittercism/android/ay$1;

    invoke-direct {v0, v1, p0}, Lcrittercism/android/ay$1;-><init>(Ljava/util/List;Lcrittercism/android/ar;)V

    .line 337
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 338
    sget-object v2, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 339
    :try_start_3
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 340
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 348
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 354
    :goto_2
    return-void

    .line 340
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 349
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 351
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Lcrittercism/android/ay$a;)V
    .locals 3

    .prologue
    .line 692
    sget-object v0, Lcrittercism/android/ay$a;->c:Lcrittercism/android/ay$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcrittercism/android/ay$a;->e:Lcrittercism/android/ay$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcrittercism/android/ay$a;->i:Lcrittercism/android/ay$a;

    .line 695
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v0, v1, :cond_2

    .line 696
    invoke-direct {p0}, Lcrittercism/android/ay;->u()V

    .line 697
    invoke-direct {p0, p1}, Lcrittercism/android/ay;->b(Lcrittercism/android/ay$a;)V

    .line 702
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->f:Lcrittercism/android/ay$a;

    if-eq v0, v1, :cond_1

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not running. Either it has not been started or it has been stopped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction is not running"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcrittercism/android/az;)V
    .locals 0

    .prologue
    .line 144
    sput-object p0, Lcrittercism/android/ay;->u:Lcrittercism/android/az;

    .line 146
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    .prologue
    .line 829
    monitor-enter p0

    if-gez p1, :cond_0

    .line 830
    :try_start_0
    const-string v0, "Ignoring Transaction.setValue(int) call. Negative parameter provided."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :goto_0
    monitor-exit p0

    return-void

    .line 834
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->a:Lcrittercism/android/ay$a;

    if-ne v0, v1, :cond_1

    .line 835
    iput p1, p0, Lcrittercism/android/ay;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 836
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v0, v1, :cond_2

    .line 837
    iput p1, p0, Lcrittercism/android/ay;->f:I

    .line 838
    new-instance v0, Lcrittercism/android/ay;

    invoke-direct {v0, p0}, Lcrittercism/android/ay;-><init>(Lcrittercism/android/ay;)V

    .line 841
    new-instance v1, Lcrittercism/android/ay$7;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/ay$7;-><init>(Lcrittercism/android/ay;Lcrittercism/android/ay;)V

    .line 855
    sget-object v2, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 856
    :try_start_3
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 857
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0

    .line 858
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer in progress. Ignoring setValue(int) call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction no longer in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static b(Lcrittercism/android/ar;)V
    .locals 8

    .prologue
    .line 475
    :try_start_0
    new-instance v1, Lcrittercism/android/ay;

    const-string v0, "App Load"

    invoke-direct {v1, p0, v0}, Lcrittercism/android/ay;-><init>(Lcrittercism/android/ar;Ljava/lang/String;)V

    sput-object v1, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcrittercism/android/ay;->p()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    sget-object v4, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    iput-object v4, v0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v2

    sub-long v4, v6, v4

    iput-wide v4, v0, Lcrittercism/android/ay;->g:J

    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    iput-wide v2, v0, Lcrittercism/android/ay;->m:J

    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    sget-object v2, Lcrittercism/android/ay;->u:Lcrittercism/android/az;

    sget-object v3, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcrittercism/android/az;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcrittercism/android/ay;->e:J

    sget-object v2, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    sget-object v3, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcrittercism/android/ay;

    sget-object v2, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    invoke-direct {v0, v2}, Lcrittercism/android/ay;-><init>(Lcrittercism/android/ay;)V

    new-instance v2, Lcrittercism/android/ay$3;

    invoke-direct {v2, p0, v0}, Lcrittercism/android/ay$3;-><init>(Lcrittercism/android/ar;Lcrittercism/android/ay;)V

    sget-object v3, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    sget-object v2, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    iget-wide v4, v2, Lcrittercism/android/ay;->e:J

    invoke-direct {v0, v4, v5}, Lcrittercism/android/ay;->a(J)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :try_start_5
    monitor-exit v1

    .line 481
    :goto_0
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 480
    :catch_0
    move-exception v0

    throw v0

    .line 475
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 478
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcrittercism/android/ay$a;)V
    .locals 6

    .prologue
    .line 762
    iput-object p1, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/ay;->h:J

    .line 764
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 767
    invoke-static {}, Lcrittercism/android/ay;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    sget-wide v2, Lcrittercism/android/ay;->p:J

    iget-wide v4, p0, Lcrittercism/android/ay;->m:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 769
    iget-wide v4, p0, Lcrittercism/android/ay;->i:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcrittercism/android/ay;->i:J

    .line 772
    :cond_0
    sget-object v1, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v1

    .line 773
    :try_start_0
    sget-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 774
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    new-instance v0, Lcrittercism/android/ay;

    invoke-direct {v0, p0}, Lcrittercism/android/ay;-><init>(Lcrittercism/android/ay;)V

    .line 776
    new-instance v1, Lcrittercism/android/ay$6;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/ay$6;-><init>(Lcrittercism/android/ay;Lcrittercism/android/ay;)V

    .line 812
    sget-object v2, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 813
    :try_start_1
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 814
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 814
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic b(Lcrittercism/android/ay;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcrittercism/android/ay;->v()V

    return-void
.end method

.method static synthetic c(Lcrittercism/android/ay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/ay;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcrittercism/android/ay;->r:Z

    .line 150
    return-void
.end method

.method public static g()V
    .locals 10

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcrittercism/android/ay;->p:J

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 241
    sget-object v1, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-object v2, Lcrittercism/android/ay;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    sget-object v1, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    if-eqz v1, :cond_0

    .line 256
    sget-wide v2, Lcrittercism/android/ay;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 257
    sget-object v1, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    monitor-enter v1

    .line 258
    :try_start_1
    sget-object v2, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    iget-wide v4, v2, Lcrittercism/android/ay;->i:J

    sget-wide v6, Lcrittercism/android/ay;->p:J

    sget-object v3, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    iget-wide v8, v3, Lcrittercism/android/ay;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcrittercism/android/ay;->i:J

    .line 259
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 264
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ay;

    .line 265
    monitor-enter v0

    .line 266
    :try_start_2
    iget-object v2, v0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v3, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v2, v3, :cond_1

    .line 267
    iget-object v2, v0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    iget-wide v2, v0, Lcrittercism/android/ay;->e:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcrittercism/android/ay;->i:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcrittercism/android/ay;->a(J)V

    .line 280
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 243
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 259
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 274
    :cond_2
    :try_start_3
    iget-object v2, v0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_1

    .line 277
    iget-wide v2, v0, Lcrittercism/android/ay;->e:J

    invoke-direct {v0, v2, v3}, Lcrittercism/android/ay;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 281
    :cond_3
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 578
    :try_start_0
    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    if-eqz v0, :cond_0

    sget-object v0, Lcrittercism/android/ay;->t:Lcrittercism/android/ay;

    invoke-virtual {v0}, Lcrittercism/android/ay;->b()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    throw v0

    .line 581
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static j()V
    .locals 4

    .prologue
    .line 708
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 709
    sget-object v1, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v1

    .line 710
    :try_start_0
    sget-object v2, Lcrittercism/android/ay;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 711
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 713
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ay;

    .line 714
    monitor-enter v0

    .line 715
    :try_start_1
    iget-object v2, v0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v3, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v2, v3, :cond_0

    .line 716
    sget-object v2, Lcrittercism/android/ay;->u:Lcrittercism/android/az;

    iget-object v3, v0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcrittercism/android/az;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcrittercism/android/ay;->e:J

    .line 717
    invoke-direct {v0}, Lcrittercism/android/ay;->u()V

    .line 721
    iget-wide v2, v0, Lcrittercism/android/ay;->e:J

    invoke-direct {v0, v2, v3}, Lcrittercism/android/ay;->a(J)V

    .line 723
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 711
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 724
    :cond_1
    return-void
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcrittercism/android/ay;->r:Z

    return v0
.end method

.method static synthetic n()Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    return-object v0
.end method

.method private static o()Z
    .locals 4

    .prologue
    .line 285
    sget-wide v0, Lcrittercism/android/ay;->p:J

    sget-wide v2, Lcrittercism/android/ay;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p()J
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    .line 543
    new-array v1, v0, [J

    .line 545
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/stat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    :try_start_0
    const-class v4, Landroid/os/Process;

    .line 551
    const-string v5, "readProcFile"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [J

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [F

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 553
    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    sget-object v7, Lcrittercism/android/ay;->s:[I

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const/4 v7, 0x0

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 555
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 573
    :goto_0
    return-wide v0

    .line 558
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 560
    goto :goto_0

    .line 561
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 563
    goto :goto_0

    .line 564
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 566
    goto :goto_0

    .line 567
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 569
    goto :goto_0

    .line 573
    :cond_0
    aget-wide v0, v1, v9

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private declared-synchronized q()V
    .locals 3

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->a:Lcrittercism/android/ay$a;

    if-ne v0, v1, :cond_0

    .line 606
    sget-object v0, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    iput-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/ay;->g:J

    .line 608
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/ay;->m:J

    .line 609
    sget-object v0, Lcrittercism/android/ay;->u:Lcrittercism/android/az;

    iget-object v1, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/ay;->e:J

    .line 610
    sget-object v1, Lcrittercism/android/ay;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    sget-object v0, Lcrittercism/android/ay;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :try_start_2
    new-instance v0, Lcrittercism/android/ay;

    invoke-direct {v0, p0}, Lcrittercism/android/ay;-><init>(Lcrittercism/android/ay;)V

    .line 615
    new-instance v1, Lcrittercism/android/ay$4;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/ay$4;-><init>(Lcrittercism/android/ay;Lcrittercism/android/ay;)V

    .line 629
    sget-object v2, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    :try_start_3
    sget-object v0, Lcrittercism/android/ay;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 638
    iget-wide v0, p0, Lcrittercism/android/ay;->e:J

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ay;->a(J)V

    .line 639
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 645
    :goto_0
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 605
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 639
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0

    .line 640
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction has already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized r()V
    .locals 1

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcrittercism/android/ay$a;->c:Lcrittercism/android/ay$a;

    invoke-direct {p0, v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/ay$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized s()V
    .locals 1

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcrittercism/android/ay$a;->e:Lcrittercism/android/ay$a;

    invoke-direct {p0, v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/ay$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()V
    .locals 1

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcrittercism/android/ay$a;->i:Lcrittercism/android/ay$a;

    invoke-direct {p0, v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/ay$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized u()V
    .locals 2

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcrittercism/android/ay;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_0
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 2

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v0, v1, :cond_0

    .line 757
    sget-object v0, Lcrittercism/android/ay$a;->f:Lcrittercism/android/ay$a;

    invoke-direct {p0, v0}, Lcrittercism/android/ay;->b(Lcrittercism/android/ay$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :cond_0
    monitor-exit p0

    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized w()I
    .locals 1

    .prologue
    .line 878
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcrittercism/android/ay;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 596
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/ay;->q()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    throw v0

    .line 599
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 820
    :try_start_0
    invoke-direct {p0, p1}, Lcrittercism/android/ay;->b(I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 826
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    throw v0

    .line 823
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 944
    :try_start_0
    invoke-virtual {p0}, Lcrittercism/android/ay;->k()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 948
    :goto_0
    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 952
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 650
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/ay;->r()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 656
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    throw v0

    .line 653
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 665
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/ay;->s()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    throw v0

    .line 668
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 868
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/ay;->w()I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 873
    :goto_0
    return v0

    .line 869
    :catch_0
    move-exception v0

    throw v0

    .line 871
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    .line 873
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcrittercism/android/ay;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 679
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/ay;->t()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 685
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    throw v0

    .line 682
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final k()Lorg/json/JSONArray;
    .locals 10

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 919
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    invoke-virtual {v1}, Lcrittercism/android/ay$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/ay;->e:J

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v1

    iget v0, p0, Lcrittercism/android/ay;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcrittercism/android/ay;->k:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcrittercism/android/dx;->a:Lcrittercism/android/dx;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/ay;->g:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/dx;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcrittercism/android/dx;->a:Lcrittercism/android/dx;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/ay;->h:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/dx;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 927
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 928
    iget-wide v2, p0, Lcrittercism/android/ay;->i:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 932
    :goto_1
    return-object v0

    .line 919
    :cond_0
    iget v0, p0, Lcrittercism/android/ay;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 930
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method public final l()Lcrittercism/android/ay$a;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/ay$a;

    return-object v0
.end method
