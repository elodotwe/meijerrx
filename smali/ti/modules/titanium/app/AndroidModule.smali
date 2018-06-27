.class public Lti/modules/titanium/app/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field public static final EVENT_ACCESSIBILITY_FOCUS_CHANGED:Ljava/lang/String; = "accessibilityfocuschanged"

.field public static final EVENT_ACCESSIBILITY_VIEW_FOCUS_CHANGED:Ljava/lang/String; = "accessibilityviewfocuschanged"

.field private static final TAG:Ljava/lang/String; = "App.AndroidModule"


# instance fields
.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field protected r:Lorg/appcelerator/titanium/proxy/RProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/app/AndroidModule;->appVersionCode:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 43
    invoke-direct {p0}, Lti/modules/titanium/app/AndroidModule;-><init>()V

    .line 44
    return-void
.end method

.method private initializeVersionValues()V
    .locals 5

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 124
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lti/modules/titanium/app/AndroidModule;->appVersionCode:I

    .line 125
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lti/modules/titanium/app/AndroidModule;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "App.AndroidModule"

    const-string v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "Ti.App.Android"

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lti/modules/titanium/app/AndroidModule;->appVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lti/modules/titanium/app/AndroidModule;->initializeVersionValues()V

    .line 89
    :cond_0
    iget v0, p0, Lti/modules/titanium/app/AndroidModule;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->appVersionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lti/modules/titanium/app/AndroidModule;->initializeVersionValues()V

    .line 115
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 96
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v2

    .line 98
    .local v2, "rootActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 101
    new-instance v3, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v3, v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 105
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "rootActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getR()Lorg/appcelerator/titanium/proxy/RProxy;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/appcelerator/titanium/proxy/RProxy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    .line 52
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    return-object v0
.end method

.method public getTopActivity()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getActivityRefCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v3

    .line 64
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 65
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v4, :cond_3

    .line 68
    :cond_2
    :try_start_0
    iget-object v4, v2, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 69
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :cond_3
    :goto_1
    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v4, :cond_0

    .line 76
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v3

    goto :goto_0

    .line 70
    .restart local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "App.AndroidModule"

    const-string v5, "Interrupted awaiting rootActivityLatch"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
