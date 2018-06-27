.class public Lcom/appcelerator/analytics/APSAnalyticsHelper;
.super Ljava/lang/Object;
.source "APSAnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appcelerator/analytics/APSAnalyticsHelper$1;,
        Lcom/appcelerator/analytics/APSAnalyticsHelper$AnalyticsCallback;,
        Lcom/appcelerator/analytics/APSAnalyticsHelper$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_SEPARATION_ANALYTICS:J = 0x7530L

.field protected static final DEPLOY_TYPE_DEVELOPMENT:Ljava/lang/String; = "development"

.field protected static final DEPLOY_TYPE_PRODUCTION:Ljava/lang/String; = "production"

.field private static final MINOR_SEND_ANALYTICS_DELAY:J = 0x7d0L

.field private static final MSG_SEND_ANALYTICS:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "APSAnalyticsHelper"

.field private static analyticsHandler:Landroid/os/Handler;

.field private static analyticsIntent:Landroid/content/Intent;

.field private static analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

.field private static appGuid:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static appName:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static buildType:Ljava/lang/String;

.field private static ctx:Landroid/content/Context;

.field private static deployType:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

.field private static isAnalyticsInitialized:Z

.field private static isHelperInitialized:Z

.field private static lastAnalyticsEvent:Lcom/appcelerator/analytics/APSAnalyticsEvent;

.field protected static lastEventID:Ljava/lang/String;

.field protected static platformId:Ljava/lang/String;

.field protected static sb:Ljava/lang/StringBuilder;

.field private static sdkVer:Ljava/lang/String;

.field private static sendEnrollEvent:Z

.field protected static sessionId:Ljava/lang/String;

.field private static sessionTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sb:Ljava/lang/StringBuilder;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sdkVer:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected static getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper$InstanceHolder;->access$000()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkType()I
    .locals 7

    .prologue
    .line 418
    const/4 v3, -0x1

    .line 420
    .local v3, "type":I
    sget-object v4, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 421
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 423
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 424
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 434
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 427
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 429
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "APSAnalyticsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission has been removed. Cannot determine network type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private networkTypeToTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 439
    packed-switch p1, :pswitch_data_0

    .line 449
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 441
    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    .line 443
    :pswitch_2
    const-string v0, "WIFI"

    goto :goto_0

    .line 445
    :pswitch_3
    const-string v0, "MOBILE"

    goto :goto_0

    .line 447
    :pswitch_4
    const-string v0, "LAN"

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sendAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;Z)V
    .locals 8
    .param p1, "event"    # Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .param p2, "useSessionTimeout"    # Z

    .prologue
    const-wide/16 v6, 0x7d0

    .line 523
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    invoke-virtual {v0, p1}, Lcom/appcelerator/analytics/APSAnalyticsModel;->addEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->lastEventID:Ljava/lang/String;

    .line 524
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->lastAnalyticsEvent:Lcom/appcelerator/analytics/APSAnalyticsEvent;

    .line 525
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 526
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    monitor-enter v1

    .line 527
    if-eqz p2, :cond_2

    .line 528
    :try_start_0
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    sget-wide v4, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionTimeout:J

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 535
    :cond_0
    :goto_0
    monitor-exit v1

    .line 537
    :cond_1
    return-void

    .line 530
    :cond_2
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public createEventId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "s":Ljava/lang/String;
    sget-object v2, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sb:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 337
    :try_start_0
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->createUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getMobileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 340
    monitor-exit v2

    .line 341
    return-object v0

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public getAppGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    :try_start_0
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 326
    :cond_1
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 7

    .prologue
    .line 346
    const-string v0, "Unknown"

    .line 348
    .local v0, "arch":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 351
    .local v2, "l":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 352
    const-string v5, "Processor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "values":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 359
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 366
    .end local v2    # "l":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v0

    .line 359
    .restart local v2    # "l":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 362
    .end local v2    # "l":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "APSAnalyticsHelper"

    const-string v6, "Error while trying to access processor info in /proc/cpuinfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAvailableMemory()D
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public getDBVersion()I
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    invoke-virtual {v0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getDBVersion()I

    move-result v0

    return v0
.end method

.method public getDeployType()Lcom/appcelerator/analytics/APSAnalytics$DeployType;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->deployType:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    return-object v0
.end method

.method public getLastEvent()Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->lastAnalyticsEvent:Lcom/appcelerator/analytics/APSAnalyticsEvent;

    return-object v0
.end method

.method public getLastEventID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->lastEventID:Ljava/lang/String;

    return-object v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, "macaddr":Ljava/lang/String;
    sget-object v3, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 375
    sget-object v3, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 376
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 378
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    .line 379
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v3, "APSAnalyticsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found mac address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_1
    return-object v0

    .line 382
    .restart local v1    # "wi":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v3, "APSAnalyticsHelper"

    const-string v4, "Mo WifiInfo, enabling Wifi to get mac address"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 384
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 385
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_1
    const-string v3, "APSAnalyticsHelper"

    const-string v4, "Disabling wifi because we enabled it."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 388
    :cond_3
    const-string v3, "APSAnalyticsHelper"

    const-string v4, "Still no WifiInfo, assuming no mac address"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    :cond_4
    const-string v3, "APSAnalyticsHelper"

    const-string v4, "Enabling wifi failed, assuming no mac address"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_5
    const-string v3, "APSAnalyticsHelper"

    const-string v4, "Wifi already enabled, assuming no mac address"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v3, "APSAnalyticsHelper"

    const-string v4, "Must have android.permission.ACCESS_WIFI_STATE to get mac address."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "android"

    return-object v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    const-string v0, "qnx"

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "BlackBerry"

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Android"

    goto :goto_0
.end method

.method public getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "32bit"

    return-object v0
.end method

.method public getProcessorCount()I
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sdkVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    .line 85
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appGuid:Ljava/lang/String;

    .line 89
    sget-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 90
    const-string v6, "APSAnalyticsHelper"

    const-string v7, "platformId is null, setting to empty string"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v6, ""

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    .line 94
    :cond_0
    new-instance v2, Lcom/appcelerator/analytics/DatabaseHelper;

    invoke-direct {v2, p2}, Lcom/appcelerator/analytics/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, "db":Lcom/appcelerator/analytics/DatabaseHelper;
    const-string v6, "unique_machine_id"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lcom/appcelerator/analytics/DatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "storedMachineId":Ljava/lang/String;
    const-string v6, "hardware_machine_id"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lcom/appcelerator/analytics/DatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "hardwareMachineId":Ljava/lang/String;
    sget-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    .line 107
    .local v1, "currentMachineId":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "9774d56d682e549c"

    aput-object v7, v0, v6

    const-string v6, "1234567890ABCDEF"

    aput-object v6, v0, v8

    .line 110
    .local v0, "badIds":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_1

    .line 111
    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    const-string v6, "APSAnalyticsHelper"

    const-string v7, "renaming ID"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->createUUID()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_1
    if-eq v1, v5, :cond_2

    .line 120
    const-string v6, "unique_machine_id"

    invoke-virtual {v2, v6, v1}, Lcom/appcelerator/analytics/DatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v6, "hardware_machine_id"

    sget-object v7, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/appcelerator/analytics/DatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v6, "previous_machine_id"

    invoke-virtual {v2, v6, v5}, Lcom/appcelerator/analytics/DatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    sput-object v1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->platformId:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->createUUID()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionId:Ljava/lang/String;

    .line 127
    sput-object p2, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    .line 128
    sput-boolean v8, Lcom/appcelerator/analytics/APSAnalyticsHelper;->isHelperInitialized:Z

    .line 129
    return-void

    .line 103
    .end local v0    # "badIds":[Ljava/lang/String;
    .end local v1    # "currentMachineId":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    move-object v1, v5

    .restart local v1    # "currentMachineId":Ljava/lang/String;
    goto :goto_0

    .line 110
    .restart local v0    # "badIds":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public initAnalytics()V
    .locals 9

    .prologue
    .line 133
    new-instance v6, Landroid/os/Handler;

    new-instance v7, Lcom/appcelerator/analytics/APSAnalyticsHelper$AnalyticsCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/appcelerator/analytics/APSAnalyticsHelper$AnalyticsCallback;-><init>(Lcom/appcelerator/analytics/APSAnalyticsHelper;Lcom/appcelerator/analytics/APSAnalyticsHelper$1;)V

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsHandler:Landroid/os/Handler;

    .line 134
    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    const-class v8, Lcom/appcelerator/analytics/APSAnalyticsService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsIntent:Landroid/content/Intent;

    .line 135
    new-instance v6, Lcom/appcelerator/analytics/APSAnalyticsModel;

    sget-object v7, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/appcelerator/analytics/APSAnalyticsModel;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    .line 136
    const/4 v6, 0x1

    sput-boolean v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->isAnalyticsInitialized:Z

    .line 137
    const-wide/16 v6, 0x7530

    sput-wide v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionTimeout:J

    .line 138
    sget-object v6, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->DEVELOPMENT:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    sput-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->deployType:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .line 142
    :try_start_0
    sget-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/appcelerator/analytics/APSAnalyticsHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 145
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 146
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "APSAnalyticsBaseURL"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "urlString":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 148
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "url":Ljava/net/URL;
    invoke-static {v4}, Lcom/appcelerator/analytics/APSAnalyticsService;->setAnalyticsUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlString":Ljava/lang/String;
    :cond_0
    return-void

    .line 152
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "packageName from context was not found.  "

    .line 154
    .local v2, "message":Ljava/lang/String;
    const-string v6, "APSAnalyticsHelper"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 156
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v2, "Custom Base Url property is not a valid url. "

    .line 158
    .restart local v2    # "message":Ljava/lang/String;
    const-string v6, "APSAnalyticsHelper"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public isAnalyticsInitialized()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->isAnalyticsInitialized:Z

    return v0
.end method

.method public isHelperInitialized()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->isHelperInitialized:Z

    return v0
.end method

.method public declared-synchronized postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/appcelerator/analytics/APSAnalyticsEvent;

    .prologue
    const/4 v11, 0x1

    .line 476
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ti.enroll"

    if-ne v9, v10, :cond_1

    .line 477
    sget-object v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    invoke-virtual {v9}, Lcom/appcelerator/analytics/APSAnalyticsModel;->needsEnrollEvent()Z

    move-result v9

    sput-boolean v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendEnrollEvent:Z

    .line 478
    sget-boolean v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendEnrollEvent:Z

    if-eqz v9, :cond_0

    .line 479
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;Z)V

    .line 480
    sget-object v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    invoke-virtual {v9}, Lcom/appcelerator/analytics/APSAnalyticsModel;->markEnrolled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 483
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ti.foreground"

    if-ne v9, v10, :cond_5

    .line 484
    sget-object v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    const-string v10, "ti.background"

    invoke-virtual {v9, v10}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getLastTimestampForEventType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 486
    .local v8, "tsForEndEvent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 487
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    .local v3, "key":Ljava/lang/Integer;
    :try_start_2
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getDateFormatForTimestamp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 490
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 491
    .local v4, "lastEnd":J
    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 494
    .local v6, "start":J
    sub-long v10, v6, v4

    sget-wide v12, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionTimeout:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 495
    sget-object v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->analyticsModel:Lcom/appcelerator/analytics/APSAnalyticsModel;

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/appcelerator/analytics/APSAnalyticsModel;->deleteEvents([I)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 498
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastEnd":J
    .end local v6    # "start":J
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/text/ParseException;
    :try_start_3
    const-string v9, "APSAnalyticsHelper"

    const-string v10, "Incorrect timestamp. Unable to send the ti.start event."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 476
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v8    # "tsForEndEvent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 505
    .restart local v8    # "tsForEndEvent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    :try_start_4
    sget-boolean v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendEnrollEvent:Z

    if-eqz v9, :cond_4

    .line 506
    const/4 v9, 0x0

    sput-boolean v9, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendEnrollEvent:Z

    .line 511
    :goto_2
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;Z)V

    goto :goto_0

    .line 508
    :cond_4
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->resetSid()V

    .line 509
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getSessionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->setEventSid(Ljava/lang/String;)V

    goto :goto_2

    .line 513
    .end local v8    # "tsForEndEvent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ti.background"

    if-ne v9, v10, :cond_6

    .line 514
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;Z)V

    goto/16 :goto_0

    .line 517
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sendAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public resetSid()V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 267
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appId:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appName:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 272
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->appVersion:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 298
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->buildType:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setDeployType(Lcom/appcelerator/analytics/APSAnalytics$DeployType;)V
    .locals 0
    .param p1, "type"    # Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .prologue
    .line 288
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->deployType:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .line 289
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 308
    sput-object p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sdkVer:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setSessionTimeout(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 318
    sget-wide v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 319
    sput-wide p1, Lcom/appcelerator/analytics/APSAnalyticsHelper;->sessionTimeout:J

    .line 321
    :cond_0
    return-void
.end method
