.class public Lorg/appcelerator/titanium/util/TiResponseCache;
.super Ljava/net/ResponseCache;
.source "TiResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;,
        Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BODY_SUFFIX:Ljava/lang/String; = ".bdy"

.field private static final CACHE_SIZE_KEY:Ljava/lang/String; = "ti.android.cache.size.max"

.field private static final CLEANUP_DELAY:I = 0xea60

.field private static final DEFAULT_CACHE_SIZE:I = 0x1900000

.field private static final HEADER_SUFFIX:Ljava/lang/String; = ".hdr"

.field private static final INITIAL_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "TiResponseCache"

.field private static cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static completeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxCacheSize:J

.field private static final videoFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/util/TiResponseCache;->$assertionsDisabled:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    .line 54
    const-wide/16 v4, 0x0

    sput-wide v4, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mkv"

    aput-object v4, v3, v2

    const-string v2, "webm"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "3gp"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "mp4"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "ts"

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->videoFormats:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Lorg/appcelerator/titanium/TiApplication;)V
    .locals 7
    .param p1, "cachedir"    # Ljava/io/File;
    .param p2, "tiApp"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 299
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiResponseCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "cachedir MUST be a directory"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 300
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 302
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v2, "ti.android.cache.size.max"

    const/high16 v3, 0x1900000

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v2, v0

    sput-wide v2, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    .line 303
    const-string v0, "TiResponseCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max cache size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v0, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 306
    new-instance v1, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    sget-wide v2, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    invoke-direct {v1, v0, v2, v3}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;-><init>(Ljava/io/File;J)V

    .line 307
    .local v1, "command":Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;
    sget-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 308
    return-void
.end method

.method static synthetic access$000(Ljava/net/URI;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/URI;

    .prologue
    .line 43
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiResponseCache;->fireCacheCompleted(Ljava/net/URI;)V

    return-void
.end method

.method public static addCompleteListener(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;)V
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "listener"    # Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;

    .prologue
    .line 286
    sget-object v2, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 287
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "hash":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    monitor-exit v2

    .line 293
    return-void

    .line 292
    .end local v0    # "hash":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final fireCacheCompleted(Ljava/net/URI;)V
    .locals 5
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 495
    sget-object v4, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 496
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "hash":Ljava/lang/String;
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;

    .line 499
    .local v2, "listener":Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    invoke-interface {v2, p0}, Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;->cacheCompleted(Ljava/net/URI;)V

    goto :goto_0

    .line 503
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 501
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    return-void
.end method

.method protected static getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 375
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 376
    :cond_0
    const/4 v1, 0x0

    .line 378
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private makeLowerCaseHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "origHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 397
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 402
    :cond_0
    const-string v3, "null"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 405
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static openCachedStream(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 14
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v10, 0x0

    .line 232
    invoke-static {}, Lorg/appcelerator/titanium/util/TiResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v8

    .line 234
    .local v8, "rcc":Ljava/net/ResponseCache;
    instance-of v11, v8, Lorg/appcelerator/titanium/util/TiResponseCache;

    if-eqz v11, :cond_4

    move-object v7, v8

    .line 236
    check-cast v7, Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 237
    .local v7, "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    iget-object v11, v7, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v11, :cond_1

    .line 281
    .end local v7    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :cond_0
    :goto_0
    return-object v10

    .line 240
    .restart local v7    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "hash":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v11, v7, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".hdr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v3, "hFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v11, v7, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".bdy"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v0, "bFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 247
    const/4 v6, 0x0

    .line 250
    .local v6, "isGZip":Z
    :try_start_0
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiResponseCache;->readHeaders(Ljava/io/File;)Ljava/util/Map;

    move-result-object v5

    .line 251
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v11, "content-encoding"

    invoke-static {v5, v11}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "contentEncoding":Ljava/lang/String;
    const-string v11, "gzip"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    .line 253
    const/4 v6, 0x1

    .line 258
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 259
    :try_start_1
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v11

    goto :goto_0

    .line 261
    :cond_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 265
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 269
    .end local v0    # "bFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "hFile":Ljava/io/File;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isGZip":Z
    .end local v7    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :cond_4
    if-eqz v8, :cond_0

    .line 272
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 273
    .local v9, "urlc":Ljava/net/URLConnection;
    const-string v11, "Cache-Control"

    const-string v12, "only-if-cached"

    invoke-virtual {v9, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    goto/16 :goto_0

    .line 275
    .end local v9    # "urlc":Ljava/net/URLConnection;
    :catch_2
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 255
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bFile":Ljava/io/File;
    .restart local v3    # "hFile":Ljava/io/File;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "isGZip":Z
    .restart local v7    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :catch_3
    move-exception v11

    goto :goto_1
.end method

.method public static peek(Ljava/net/URI;)Z
    .locals 10
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    invoke-static {}, Lorg/appcelerator/titanium/util/TiResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v4

    .line 203
    .local v4, "rcc":Ljava/net/ResponseCache;
    instance-of v7, v4, Lorg/appcelerator/titanium/util/TiResponseCache;

    if-eqz v7, :cond_2

    move-object v3, v4

    .line 205
    check-cast v3, Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 206
    .local v3, "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    iget-object v7, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v7, :cond_1

    .line 222
    .end local v3    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :cond_0
    :goto_0
    return v5

    .line 209
    .restart local v3    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "hash":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v7, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".hdr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v1, "hFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v7, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bdy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v0, "bFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 215
    goto :goto_0

    .line 217
    .end local v0    # "bFile":Ljava/io/File;
    .end local v1    # "hFile":Ljava/io/File;
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "rc":Lorg/appcelerator/titanium/util/TiResponseCache;
    :cond_2
    if-eqz v4, :cond_0

    move v5, v6

    .line 219
    goto :goto_0
.end method

.method private static readHeaders(Ljava/io/File;)Ljava/util/Map;
    .locals 8
    .param p0, "hFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 351
    .local v3, "rdr":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    .line 352
    const-string v4, "="

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "keyval":[Ljava/lang/String;
    array-length v4, v1

    if-ge v4, v7, :cond_0

    .line 351
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_0
    const-string v4, "null"

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    const/4 v4, 0x0

    aput-object v4, v1, v6

    .line 361
    :cond_1
    aget-object v4, v1, v6

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 362
    aget-object v4, v1, v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_2
    aget-object v4, v1, v6

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    .end local v1    # "keyval":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 369
    return-object v0
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "rqstMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "rqstHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 314
    if-eqz p1, :cond_0

    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v6, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-object v5

    .line 320
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "fileFormat":Ljava/lang/String;
    sget-object v6, Lorg/appcelerator/titanium/util/TiResponseCache;->videoFormats:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    .line 326
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "hash":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".hdr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .local v2, "hFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bdy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v0, "bFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->readHeaders(Ljava/io/File;)Ljava/util/Map;

    move-result-object v4

    .line 340
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 343
    new-instance v5, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v4, v6}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;-><init>(Ljava/util/Map;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected getHeaderInt(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 2
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 390
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 388
    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 24
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "conn"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 484
    :goto_0
    return-object v2

    .line 417
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, "fileFormat":Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/titanium/util/TiResponseCache;->videoFormats:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 419
    const/4 v2, 0x0

    goto :goto_0

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 429
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->makeLowerCaseHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 430
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, "cache-control"

    invoke-static {v13, v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, "cacheControl":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v2, "^.*(no-cache|no-store|must-revalidate|max-age=0).*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    const/4 v2, 0x0

    goto :goto_0

    .line 435
    :cond_3
    const/16 v18, 0x0

    .line 436
    .local v18, "skipTransferEncodingHeader":Z
    const-string v2, "transfer-encoding"

    invoke-static {v13, v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 437
    .local v19, "tEncoding":Ljava/lang/String;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    const/16 v18, 0x1

    .line 442
    :cond_4
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, "newl":Ljava/lang/String;
    const-string v2, "content-length"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v3}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeaderInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    int-to-long v6, v2

    .line 444
    .local v6, "contentLength":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v17, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 446
    .local v12, "hdr":Ljava/lang/String;
    if-eqz v18, :cond_6

    const-string v2, "transfer-encoding"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 447
    :cond_6
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 448
    .local v20, "val":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v2, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 455
    .end local v12    # "hdr":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "val":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v6

    sget-wide v22, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    cmp-long v2, v2, v22

    if-lez v2, :cond_8

    .line 456
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 461
    :cond_8
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 465
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 468
    .local v11, "hash":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ".hdr"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    .local v5, "hFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ".bdy"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    .local v4, "bFile":Ljava/io/File;
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 474
    .local v10, "hWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 476
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V

    .line 479
    monitor-enter p0

    .line 481
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_9

    .line 482
    const/4 v2, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 485
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 476
    :catchall_1
    move-exception v2

    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V

    throw v2

    .line 484
    :cond_9
    :try_start_3
    new-instance v2, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;-><init>(Ljava/net/URI;Ljava/io/File;Ljava/io/File;J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 462
    .end local v4    # "bFile":Ljava/io/File;
    .end local v5    # "hFile":Ljava/io/File;
    .end local v10    # "hWriter":Ljava/io/FileWriter;
    .end local v11    # "hash":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 490
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 491
    return-void
.end method
