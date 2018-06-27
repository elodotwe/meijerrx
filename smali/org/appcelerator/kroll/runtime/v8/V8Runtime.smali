.class public final Lorg/appcelerator/kroll/runtime/v8/V8Runtime;
.super Lorg/appcelerator/kroll/KrollRuntime;
.source "V8Runtime.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MAX_V8_IDLE_INTERVAL:I = 0x7530

.field private static final MSG_PROCESS_DEBUG_MESSAGES:I = 0x12e

.field private static final NAME:Ljava/lang/String; = "v8"

.field private static final TAG:Ljava/lang/String; = "KrollV8Runtime"

.field private static externalCommonJsModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private externalModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollExternalModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastV8Idle:J

.field private libLoaded:Z

.field private loadedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;-><init>()V

    .line 37
    iput-boolean v1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)J
    .locals 2
    .param p0, "x0"    # Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->lastV8Idle:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;J)J
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/kroll/runtime/v8/V8Runtime;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->lastV8Idle:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Z
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeIdle()Z

    move-result v0

    return v0
.end method

.method public static addExternalCommonJsModule(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "jsSourceProvider":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;

    .line 227
    .local v1, "providerInstance":Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;
    sget-object v2, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "providerInstance":Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KrollV8Runtime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load external CommonJS module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadExternalCommonJsModules()V
    .locals 3

    .prologue
    .line 153
    sget-object v2, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "moduleName":Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;

    invoke-direct {p0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeAddExternalCommonJsModule(Ljava/lang/String;Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;)V

    goto :goto_0

    .line 156
    .end local v1    # "moduleName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadExternalModules()V
    .locals 8

    .prologue
    .line 128
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "libName":Ljava/lang/String;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bootstrapping module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 139
    .local v4, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/kroll/KrollExternalModule;

    .line 140
    .local v3, "module":Lorg/appcelerator/kroll/KrollExternalModule;
    invoke-interface {v3}, Lorg/appcelerator/kroll/KrollExternalModule;->bootstrap()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 142
    .end local v3    # "module":Lorg/appcelerator/kroll/KrollExternalModule;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error bootstrapping external module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error bootstrapping external module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v2    # "libName":Ljava/lang/String;
    .end local v4    # "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    :cond_1
    return-void
.end method

.method private native nativeAddExternalCommonJsModule(Ljava/lang/String;Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;)V
.end method

.method private native nativeDispose()V
.end method

.method private native nativeEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native nativeIdle()Z
.end method

.method private native nativeInit(ZIZZ)V
.end method

.method private native nativeProcessDebugMessages()V
.end method

.method private native nativeRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method


# virtual methods
.method public addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "libName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollExternalModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method protected dispatchDebugMessages()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->handler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method public doDispose()V
    .locals 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v1

    .line 162
    .local v1, "deployData":Lorg/appcelerator/kroll/common/TiDeployData;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiDeployData;->isProfilerEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    :try_start_0
    const-string v4, "org.appcelerator.titanium.profiler.TiProfiler"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 165
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "stopProfiler"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 166
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeDispose()V

    .line 172
    return-void

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KrollV8Runtime"

    const-string v5, "Unable to stop profiler."

    invoke-static {v4, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "activityProxy"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 178
    return-void
.end method

.method public getRuntimeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "v8"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeProcessDebugMessages()V

    .line 198
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->dispatchDebugMessages()V

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
    .end packed-switch
.end method

.method public initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeInitObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public initRuntime()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 50
    const/4 v9, 0x1

    .line 51
    .local v9, "useGlobalRefs":Z
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v10

    invoke-interface {v10}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v2

    .line 53
    .local v2, "deployData":Lorg/appcelerator/kroll/common/TiDeployData;
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v11, "sdk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v11, "google_sdk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v11, "generic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 54
    :cond_0
    const-string v10, "KrollV8Runtime"

    const-string v11, "Emulator detected, storing global references in a global Map"

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v9, 0x0

    .line 58
    :cond_1
    iget-boolean v10, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    if-nez v10, :cond_4

    .line 59
    const-string v10, "stlport_shared"

    invoke-static {v10}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    const-string v10, "kroll-v8"

    invoke-static {v10}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "htc one"

    aput-object v11, v10, v13

    const-string v11, "optimus l5"

    aput-object v11, v10, v14

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 68
    .local v8, "model":Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    const-wide/16 v10, 0x32

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v10

    goto :goto_0

    .line 76
    .end local v8    # "model":Ljava/lang/String;
    :cond_3
    iput-boolean v14, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    .line 79
    .end local v4    # "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v0, 0x1

    .line 80
    .local v0, "DBG":Z
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v10

    invoke-interface {v10}, Lorg/appcelerator/kroll/KrollApplication;->getDeployType()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "deployType":Ljava/lang/String;
    const-string v10, "production"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 82
    const/4 v0, 0x0

    .line 85
    :cond_5
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->getDebuggerPort()I

    move-result v10

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->isProfilerEnabled()Z

    move-result v11

    invoke-direct {p0, v9, v10, v0, v11}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeInit(ZIZZ)V

    .line 87
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->isDebuggerEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 88
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->dispatchDebugMessages()V

    .line 99
    :cond_6
    :goto_1
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadExternalModules()V

    .line 100
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadExternalCommonJsModules()V

    .line 102
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v10

    new-instance v11, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;

    invoke-direct {v11, p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;-><init>(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V

    invoke-virtual {v10, v11}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 124
    return-void

    .line 89
    :cond_7
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->isProfilerEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 91
    :try_start_1
    const-string v10, "org.appcelerator.titanium.profiler.TiProfiler"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "startProfiler"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 93
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 94
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 95
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "KrollV8Runtime"

    const-string v11, "Unable to load profiler."

    invoke-static {v10, v11, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setGCFlag()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    return-void
.end method
