.class public Lcom/appcelerator/analytics/APSAnalyticsService;
.super Landroid/app/Service;
.source "APSAnalyticsService.java"


# static fields
.field private static final ANALYTICS_URL:Ljava/lang/String; = "https://api.appcelerator.com/p/v3/mobile-track/"

.field private static final BUCKET_SIZE_FAST_NETWORK:I = 0xa

.field private static final BUCKET_SIZE_SLOW_NETWORK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "APSAnalyticsService"

.field private static analyticsURL:Ljava/lang/String;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private sending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/appcelerator/analytics/APSAnalyticsService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/appcelerator/analytics/APSAnalyticsService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/appcelerator/analytics/APSAnalyticsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appcelerator/analytics/APSAnalyticsService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalyticsService;->canSend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsService;->analyticsURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/appcelerator/analytics/APSAnalyticsService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/appcelerator/analytics/APSAnalyticsService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private canSend()Z
    .locals 6

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 222
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 224
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v3, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    const/4 v2, 0x1

    .line 232
    :cond_0
    return v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "APSAnalyticsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connectivity permissions have been removed from AndroidManifest.xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setAnalyticsUrl(Ljava/net/URL;)V
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsService;->analyticsURL:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsService;->analyticsURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "https://api.appcelerator.com/p/v3/mobile-track/"

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsService;->analyticsURL:Ljava/lang/String;

    .line 61
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/appcelerator/analytics/APSAnalyticsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 70
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 84
    iget-object v2, p0, Lcom/appcelerator/analytics/APSAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "APSAnalyticsService"

    const-string v3, "Send already in progress, skipping intent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return v4

    .line 89
    :cond_0
    move-object v0, p0

    .line 91
    .local v0, "self":Lcom/appcelerator/analytics/APSAnalyticsService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/appcelerator/analytics/APSAnalyticsService$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/appcelerator/analytics/APSAnalyticsService$1;-><init>(Lcom/appcelerator/analytics/APSAnalyticsService;ILcom/appcelerator/analytics/APSAnalyticsService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 210
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
