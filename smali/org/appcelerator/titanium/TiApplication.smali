.class public abstract Lorg/appcelerator/titanium/TiApplication;
.super Landroid/app/Application;
.source "TiApplication.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;
    }
.end annotation


# static fields
.field public static final APPLICATION_PREFERENCES_NAME:Ljava/lang/String; = "titanium"

.field public static final DEFAULT_THREAD_STACK_SIZE:I = 0x4000

.field public static final DEPLOY_TYPE_DEVELOPMENT:Ljava/lang/String; = "development"

.field public static final DEPLOY_TYPE_PRODUCTION:Ljava/lang/String; = "production"

.field public static final DEPLOY_TYPE_TEST:Ljava/lang/String; = "test"

.field private static final PROPERTY_COMPILE_JS:Ljava/lang/String; = "ti.android.compilejs"

.field private static final PROPERTY_DEFAULT_UNIT:Ljava/lang/String; = "ti.ui.defaultunit"

.field private static final PROPERTY_ENABLE_COVERAGE:Ljava/lang/String; = "ti.android.enablecoverage"

.field public static final PROPERTY_FASTDEV:Ljava/lang/String; = "ti.android.fastdev"

.field private static final PROPERTY_THREAD_STACK_SIZE:Ljava/lang/String; = "ti.android.threadstacksize"

.field private static final PROPERTY_USE_LEGACY_WINDOW:Ljava/lang/String; = "ti.android.useLegacyWindow"

.field private static final SYSTEM_UNIT:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "TiApplication"

.field public static final TRIM_MEMORY_RUNNING_LOW:I = 0xa

.field public static USE_LEGACY_WINDOW:Z

.field protected static activityStack:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected static activityTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public static isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mainThreadId:J

.field protected static tiApp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiApplication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

.field private appProperties:Lorg/appcelerator/titanium/TiProperties;

.field private baseUrl:Ljava/lang/String;

.field private buildHash:Ljava/lang/String;

.field private buildTimestamp:Ljava/lang/String;

.field private buildVersion:Ljava/lang/String;

.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private defaultUnit:Ljava/lang/String;

.field private density:Ljava/lang/String;

.field protected deployData:Lorg/appcelerator/kroll/common/TiDeployData;

.field private externalStorageReceiver:Landroid/content/BroadcastReceiver;

.field protected filteredAnalyticsEvents:[Ljava/lang/String;

.field private forceFinishRootActivity:Z

.field protected modules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private proxyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

.field private restartPending:Z

.field private rootActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiRootActivity;",
            ">;"
        }
    .end annotation
.end field

.field public rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

.field private startUrl:Ljava/lang/String;

.field protected stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

.field protected tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/appcelerator/titanium/TiApplication;->mainThreadId:J

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    .line 89
    sput-boolean v2, Lorg/appcelerator/titanium/TiApplication;->USE_LEGACY_WINDOW:Z

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 91
    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    .line 95
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 105
    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiApplication;->forceFinishRootActivity:Z

    .line 141
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    .line 145
    const-string v0, "TiApplication"

    const-string v1, "checkpoint, app created."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->loadBuildProperties()V

    .line 149
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lorg/appcelerator/titanium/TiApplication;->mainThreadId:J

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    .line 153
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    .line 155
    const-string v0, "TiApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Titanium "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/appcelerator/titanium/TiApplication;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->getRemoteCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/appcelerator/titanium/TiApplication;)Lorg/appcelerator/titanium/util/TiResponseCache;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

    return-object v0
.end method

.method public static addActivityTransitionListener(Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;)V
    .locals 1
    .param p0, "a"    # Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;

    .prologue
    .line 125
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public static addToActivityStack(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 179
    return-void
.end method

.method public static getAppCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 249
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAppRootOrCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 265
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    if-nez v0, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 269
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lorg/appcelerator/titanium/TiApplication;
    .locals 3

    .prologue
    .line 165
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    .line 167
    .local v0, "tiAppRef":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 173
    .end local v0    # "tiAppRef":Lorg/appcelerator/titanium/TiApplication;
    :goto_0
    return-object v0

    .line 172
    .restart local v0    # "tiAppRef":Lorg/appcelerator/titanium/TiApplication;
    :cond_0
    const-string v1, "TiApplication"

    const-string v2, "Unable to get the TiApplication instance"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRemoteCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 448
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "remote-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 452
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->excludeFileOnCleanup(Ljava/io/File;)V

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private getStartFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "defaultStartFile"    # Ljava/lang/String;

    .prologue
    .line 557
    return-object p1
.end method

.method public static isCurrentActivityInForeground()Z
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, "currentActivity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_0

    .line 235
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "currentActivity":Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->isInForeground()Z

    move-result v1

    .line 237
    :goto_0
    return v1

    .restart local v0    # "currentActivity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUIThread()Z
    .locals 4

    .prologue
    .line 781
    sget-wide v0, Lorg/appcelerator/titanium/TiApplication;->mainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAppProperties()V
    .locals 4

    .prologue
    .line 345
    const-string v2, "Resources/_app_props_.json"

    invoke-static {v2}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "appPropertiesString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/appcelerator/titanium/TiProperties;->setSystemProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "TiApplication"

    const-string v3, "Unable to load app properties."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeActivityTransitionListener(Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;)V
    .locals 1
    .param p0, "a"    # Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;

    .prologue
    .line 130
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public static removeFromActivityStack(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method private startExternalStorageMonitor()V
    .locals 2

    .prologue
    .line 819
    new-instance v1, Lorg/appcelerator/titanium/TiApplication$2;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/TiApplication$2;-><init>(Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->externalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 839
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->externalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/appcelerator/titanium/TiApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 846
    return-void
.end method

.method private stopExternalStorageMonitor()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->externalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 851
    return-void
.end method

.method public static terminateActivityStack()V
    .locals 4

    .prologue
    .line 190
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v3, :cond_0

    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 211
    .local v2, "i":I
    :cond_0
    :goto_0
    return-void

    .line 197
    .end local v2    # "i":I
    :cond_1
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 200
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 201
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 202
    .local v0, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 204
    .local v1, "currentActivity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 197
    .end local v0    # "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v1    # "currentActivity":Landroid/app/Activity;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 210
    :cond_3
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->clear()V

    goto :goto_0
.end method

.method public static updateActivityTransitionState(Z)V
    .locals 2
    .param p0, "state"    # Z

    .prologue
    .line 135
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;

    invoke-interface {v1, p0}, Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;->onActivityTransition(Z)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public activityStackHasLaunchActivity()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 215
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v3, :cond_0

    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 218
    :cond_1
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 219
    .local v0, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v3, :cond_2

    .line 220
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "appEventProxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 562
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 565
    :cond_0
    return-void
.end method

.method public beforeForcedRestart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 874
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 875
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 876
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 878
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v0, :cond_1

    .line 879
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiWeakList;->clear()V

    .line 881
    :cond_1
    return-void
.end method

.method public cancelTimers()V
    .locals 0

    .prologue
    .line 862
    invoke-static {}, Lti/modules/titanium/TitaniumModule;->cancelTimers()V

    .line 863
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 855
    invoke-static {}, Lorg/appcelerator/titanium/TiActivityWindows;->dispose()V

    .line 856
    invoke-static {}, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->dispose()V

    .line 857
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiFileHelper;->destroyTempFiles()V

    .line 858
    return-void
.end method

.method public fireAppEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, "handled":Z
    iget-object v5, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 576
    .local v4, "weakProxy":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 577
    .local v0, "appEventProxy":Lorg/appcelerator/kroll/KrollProxy;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    .line 582
    .local v3, "proxyHandled":Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 583
    :goto_1
    goto :goto_0

    .line 582
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 585
    .end local v0    # "appEventProxy":Lorg/appcelerator/kroll/KrollProxy;
    .end local v3    # "proxyHandled":Z
    .end local v4    # "weakProxy":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    :cond_3
    return v1
.end method

.method public forceCompileJS()Z
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.compilejs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 886
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public getAppGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    return-object v0
.end method

.method public getAppProperties()Lorg/appcelerator/titanium/TiProperties;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 5

    .prologue
    .line 280
    :goto_0
    sget-object v2, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v1

    .local v1, "activityStackSize":I
    if-lez v1, :cond_1

    .line 281
    sget-object v2, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 284
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 292
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const-string v2, "TiApplication"

    const-string v3, "activity stack is empty, unable to get current activity"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getDefaultUnit()Ljava/lang/String;
    .locals 5

    .prologue
    .line 700
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->defaultUnit:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 701
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    const-string v3, "ti.ui.defaultunit"

    const-string v4, "system"

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->defaultUnit:Ljava/lang/String;

    .line 703
    const-string v2, "system|px|dp|dip|mm|cm|in"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 704
    .local v1, "unitPattern":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->defaultUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 705
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    const-string v2, "system"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->defaultUnit:Ljava/lang/String;

    .line 709
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "unitPattern":Ljava/util/regex/Pattern;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->defaultUnit:Ljava/lang/String;

    return-object v2
.end method

.method public getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->deployData:Lorg/appcelerator/kroll/common/TiDeployData;

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getDeployType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceFinishRootActivity()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->forceFinishRootActivity:Z

    return v0
.end method

.method public getModuleByName(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 790
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 791
    .local v0, "module":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/kroll/KrollModule;>;"
    if-nez v0, :cond_0

    .line 792
    const/4 v1, 0x0

    .line 795
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    goto :goto_0
.end method

.method public getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiRootActivity;

    goto :goto_0
.end method

.method public getRootOrCurrentActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 304
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 317
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v0

    .line 309
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 311
    .restart local v0    # "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 316
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    const-string v1, "TiApplication"

    const-string v2, "No valid root or current activity found for application instance"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->startUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "basename"    # Ljava/lang/String;
    .param p3, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollDict;"
        }
    .end annotation

    .prologue
    .line 623
    .local p2, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    invoke-virtual {v0, p3, p2, v1, p1}, Lorg/appcelerator/titanium/TiStylesheet;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemProperties()Lorg/appcelerator/titanium/TiProperties;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    return-object v0
.end method

.method public getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    return-object v0
.end method

.method public getThreadStackSize()I
    .locals 3

    .prologue
    .line 714
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.threadstacksize"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTiBuildHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTiBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTiBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public isAnalyticsFiltered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->filteredAnalyticsEvents:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v2

    .line 665
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->filteredAnalyticsEvents:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 666
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->filteredAnalyticsEvents:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 667
    .local v0, "currentName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 668
    const/4 v2, 0x1

    goto :goto_0

    .line 665
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isCoverageEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "production"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    const-string v2, "ti.android.enablecoverage"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 748
    :cond_0
    return v0
.end method

.method public isDebuggerEnabled()Z
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDebuggerEnabled()Z

    move-result v0

    return v0
.end method

.method public isFastDevMode()Z
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "development"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 736
    .local v0, "development":Z
    if-nez v0, :cond_0

    .line 737
    const/4 v1, 0x0

    .line 739
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    const-string v2, "ti.android.fastdev"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isRestartPending()Z
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    return v0
.end method

.method public isRootActivityAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 527
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 532
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return v1
.end method

.method protected loadBuildProperties()V
    .locals 4

    .prologue
    .line 322
    const-string v2, "1.0"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    .line 323
    const-string v2, "N/A"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    .line 324
    const-string v2, "N/A"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "org/appcelerator/titanium/build.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 326
    .local v1, "versionStream":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 327
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 329
    .local v0, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 330
    const-string v2, "build.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const-string v2, "build.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    .line 333
    :cond_0
    const-string v2, "build.timestamp"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    const-string v2, "build.timestamp"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    .line 336
    :cond_1
    const-string v2, "build.githash"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const-string v2, "build.githash"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v0    # "properties":Ljava/util/Properties;
    :cond_2
    :goto_0
    return-void

    .line 339
    .restart local v0    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 359
    const-string v2, "TiApplication"

    const-string v3, "Application onCreate"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 362
    .local v0, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v2, Lorg/appcelerator/titanium/TiApplication$1;

    invoke-direct {v2, p0, v0}, Lorg/appcelerator/titanium/TiApplication$1;-><init>(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 373
    new-instance v2, Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "titanium"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/appcelerator/titanium/TiProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 375
    const-string v2, "file:///android_asset/Resources/"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    .line 377
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    const-string v3, "app.js"

    invoke-direct {p0, v3}, Lorg/appcelerator/titanium/TiApplication;->getStartFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v1, "fullPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    .line 380
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    .line 382
    new-instance v2, Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-direct {v2, p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;-><init>(Landroid/app/Application;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    .line 383
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 398
    invoke-static {}, Lorg/appcelerator/titanium/util/TiImageLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiImageLruCache;->evictAll()V

    .line 399
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 400
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->stopExternalStorageMonitor()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 390
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 391
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 408
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 409
    invoke-static {}, Lorg/appcelerator/titanium/util/TiImageLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiImageLruCache;->evictAll()V

    .line 411
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 412
    return-void
.end method

.method public postAppInfo()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lorg/appcelerator/kroll/common/TiDeployData;

    invoke-direct {v0, p0}, Lorg/appcelerator/kroll/common/TiDeployData;-><init>(Lorg/appcelerator/kroll/KrollApplication;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->deployData:Lorg/appcelerator/kroll/common/TiDeployData;

    .line 418
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->initialize()V

    .line 421
    return-void
.end method

.method public postOnCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->loadAppProperties()V

    .line 427
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    .line 428
    .local v0, "runtime":Lorg/appcelerator/kroll/KrollRuntime;
    if-eqz v0, :cond_0

    .line 429
    const-string v1, "TiApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Titanium Javascript runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getRuntimeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v2, "ti.android.debug"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    .line 436
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v2, "ti.android.useLegacyWindow"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/appcelerator/titanium/TiApplication;->USE_LEGACY_WINDOW:Z

    .line 438
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->startExternalStorageMonitor()V

    .line 441
    new-instance v1, Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->getRemoteCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/appcelerator/titanium/util/TiResponseCache;-><init>(Ljava/io/File;Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 442
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 443
    new-instance v1, Lorg/appcelerator/titanium/TiExceptionHandler;

    invoke-direct {v1}, Lorg/appcelerator/titanium/TiExceptionHandler;-><init>()V

    invoke-static {v1}, Lorg/appcelerator/kroll/KrollRuntime;->setPrimaryExceptionHandler(Lorg/appcelerator/kroll/KrollExceptionHandler;)V

    .line 444
    return-void

    .line 432
    :cond_0
    const-string v1, "TiApplication"

    const-string v2, "Titanium Javascript runtime: unknown"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerModuleInstance(Ljava/lang/String;Lorg/appcelerator/kroll/KrollModule;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "module"    # Lorg/appcelerator/kroll/KrollModule;

    .prologue
    .line 800
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    const-string v0, "TiApplication"

    const-string v1, "Registering module with name already in use."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    return-void
.end method

.method public registerProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 631
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getProxyId()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "proxyId":Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_0
    return-void
.end method

.method public removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "appEventProxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 570
    return-void
.end method

.method public scheduleRestart(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 753
    const-string v1, "TiApplication"

    const-string v2, "Scheduling application restart"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    const-string v1, "TiApplication"

    const-string v2, "Here is call stack leading to restart. (NOTE: this is not a real exception, just a stack trace.) :"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    .line 759
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 760
    .local v0, "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiRootActivity;->restartActivity(I)V

    .line 763
    :cond_1
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "newValue"    # Landroid/app/Activity;

    .prologue
    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_1

    .line 540
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 542
    :cond_1
    monitor-exit p0

    .line 543
    return-void

    .line 542
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFilterAnalyticsEvents([Ljava/lang/String;)V
    .locals 0
    .param p1, "events"    # [Ljava/lang/String;

    .prologue
    .line 656
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication;->filteredAnalyticsEvents:[Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setForceFinishRootActivity(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 893
    iput-boolean p1, p0, Lorg/appcelerator/titanium/TiApplication;->forceFinishRootActivity:Z

    .line 894
    return-void
.end method

.method public setRootActivity(Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 6
    .param p1, "rootActivity"    # Lorg/appcelerator/titanium/TiRootActivity;

    .prologue
    .line 459
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    .line 460
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 463
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 464
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiRootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 465
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v3, :sswitch_data_0

    .line 481
    :goto_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->initAnalytics()V

    .line 484
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ti."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->setSdkVersion(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->setAppName(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->setAppId(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->setAppVersion(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v4, "ti.deploytype"

    const-string v5, "unknown"

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "deployType":Ljava/lang/String;
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v3}, Lorg/appcelerator/titanium/ITiAppInfo;->getBuildType()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "buildType":Ljava/lang/String;
    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v1

    .line 494
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->setBuildType(Ljava/lang/String;)V

    .line 498
    :cond_1
    sget-object v3, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->OTHER:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    invoke-virtual {v3, v1}, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->setName(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    sget-object v4, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->OTHER:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->setDeployType(Lcom/appcelerator/analytics/APSAnalytics$DeployType;)V

    .line 500
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalytics;->getInstance()Lcom/appcelerator/analytics/APSAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppEnrollEvent()V

    .line 505
    .end local v0    # "buildType":Ljava/lang/String;
    .end local v1    # "deployType":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v3}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->scheduleCleanTempDir()V

    .line 506
    return-void

    .line 468
    :sswitch_0
    const-string v3, "high"

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :sswitch_1
    const-string v3, "medium"

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto/16 :goto_0

    .line 476
    :sswitch_2
    const-string v3, "low"

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto/16 :goto_0

    .line 503
    :cond_2
    const-string v3, "TiApplication"

    const-string v4, "Analytics have been disabled"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public unregisterProxy(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 3
    .param p1, "proxyId"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 641
    .local v0, "proxy":Lorg/appcelerator/kroll/KrollProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 642
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "proxy":Lorg/appcelerator/kroll/KrollProxy;
    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 646
    .restart local v0    # "proxy":Lorg/appcelerator/kroll/KrollProxy;
    :cond_0
    return-object v0
.end method

.method public abstract verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V
.end method

.method public waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
    .locals 0
    .param p1, "l"    # Lorg/appcelerator/kroll/common/CurrentActivityListener;

    .prologue
    .line 809
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    .line 810
    return-void
.end method
