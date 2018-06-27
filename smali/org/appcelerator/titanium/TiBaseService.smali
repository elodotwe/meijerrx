.class public Lorg/appcelerator/titanium/TiBaseService;
.super Landroid/app/Service;
.source "TiBaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBaseService"

.field public static final TI_SERVICE_INTENT_ID_KEY:Ljava/lang/String; = "$__TITANIUM_SERVICE_INTENT_ID__$"


# instance fields
.field protected proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected serviceProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    return-void
.end method


# virtual methods
.method protected createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    new-instance v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;-><init>(Landroid/app/Service;Landroid/content/Intent;I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->serviceProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .line 54
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->serviceProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    return-object v0
.end method

.method public nextServiceInstanceId()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    new-instance v0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;-><init>(Lorg/appcelerator/titanium/TiBaseService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementServiceReceiverRefCount()V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 94
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->decrementServiceReceiverRefCount()V

    .line 95
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "TiBaseService"

    const-string v1, "The task that comes from the service\'s application has been removed."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->serviceProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v1, "taskremoved"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 64
    return-void
.end method

.method public unbindProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 73
    return-void
.end method
