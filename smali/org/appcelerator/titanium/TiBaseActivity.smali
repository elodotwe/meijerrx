.class public abstract Lorg/appcelerator/titanium/TiBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TiBaseActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;,
        Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;,
        Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBaseActivity"

.field public static calendarCallbackContext:Lorg/appcelerator/kroll/KrollObject;

.field public static calendarPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

.field public static cameraCallbackContext:Lorg/appcelerator/kroll/KrollObject;

.field public static cameraPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

.field public static contactsCallbackContext:Lorg/appcelerator/kroll/KrollObject;

.field public static contactsPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

.field public static locationCallbackContext:Lorg/appcelerator/kroll/KrollObject;

.field public static locationPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

.field public static oldCalendarCallbackContext:Lorg/appcelerator/kroll/KrollObject;

.field public static oldCalendarPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

.field private static orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

.field private static orientationListener:Landroid/view/OrientationEventListener;

.field protected static previousOrientation:I


# instance fields
.field protected activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

.field private analytics:Lcom/appcelerator/analytics/APSAnalytics;

.field protected configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private inForeground:Z

.field private instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private interceptOnBackPressedListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;",
            ">;"
        }
    .end annotation
.end field

.field public isResumed:Z

.field protected layout:Landroid/view/View;

.field private lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field public lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

.field protected menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

.field protected messenger:Landroid/os/Messenger;

.field protected msgActivityCreatedId:I

.field protected msgId:I

.field private onActivityResultListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onCreateOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDestroyFired:Z

.field private onPrepareOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected orientationDegrees:I

.field private originalOrientationMode:I

.field protected supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

.field protected supportHelperId:I

.field protected view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

.field private windowFocusChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private windowStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiWindowProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 111
    const/4 v0, -0x1

    sput v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 84
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 85
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    .line 86
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 87
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 88
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowFocusChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 89
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->interceptOnBackPressedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 90
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 91
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onActivityResultListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 92
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onCreateOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 93
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onPrepareOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 94
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalytics;->getInstance()Lcom/appcelerator/analytics/APSAnalytics;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    .line 101
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelperId:I

    .line 105
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 109
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 110
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    .line 117
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    .line 226
    return-void
.end method

.method public static callOrientationChangedListener(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1035
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1036
    .local v0, "currentOrientation":I
    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    if-eqz v1, :cond_0

    sget v1, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    if-eq v1, v0, :cond_0

    .line 1037
    sput v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    .line 1038
    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    invoke-interface {v1, v0}, Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;->onOrientationChanged(I)V

    .line 1040
    :cond_0
    return-void
.end method

.method public static deregisterOrientationListener()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 224
    return-void
.end method

.method private dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 1112
    if-nez p2, :cond_0

    .line 1113
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2    # "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1116
    .restart local p2    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {p2, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->callPropertyAsync(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    return-void
.end method

.method public static isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1657
    if-eqz p1, :cond_1

    instance-of v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1659
    :cond_0
    const/4 v0, 0x1

    .line 1661
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private permissionCallback([ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "grantResults"    # [I
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p3, "context"    # Lorg/appcelerator/kroll/KrollObject;
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 464
    if-nez p2, :cond_0

    .line 483
    :goto_0
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x1

    .line 468
    .local v0, "granted":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 469
    aget v3, p1, v1

    if-ne v3, v4, :cond_2

    .line 470
    const/4 v0, 0x0

    .line 474
    :cond_1
    if-eqz v0, :cond_3

    .line 475
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 476
    .local v2, "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 477
    invoke-interface {p2, p3, v2}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0

    .line 468
    .end local v2    # "response":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_3
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 480
    .restart local v2    # "response":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "One or more permission(s) were denied"

    invoke-virtual {v2, v4, v3}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 481
    invoke-interface {p2, p3, v2}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static registerOrientationListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V
    .locals 0
    .param p0, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .prologue
    .line 218
    sput-object p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 219
    return-void
.end method

.method private releaseDialogs(Z)V
    .locals 5
    .param p1, "finish"    # Z

    .prologue
    .line 1124
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    .line 1126
    .local v2, "p":Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1127
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getPersistent()Z

    move-result v3

    .line 1130
    .local v3, "persistent":Z
    if-nez p1, :cond_1

    if-nez v3, :cond_0

    .line 1131
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1132
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1134
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1137
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "p":Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    .end local v3    # "persistent":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1641
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1642
    return-void
.end method

.method protected activityOnDestroy()V
    .locals 0

    .prologue
    .line 1636
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1637
    return-void
.end method

.method protected activityOnPause()V
    .locals 0

    .prologue
    .line 1616
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1617
    return-void
.end method

.method protected activityOnRestart()V
    .locals 0

    .prologue
    .line 1620
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 1621
    return-void
.end method

.method protected activityOnResume()V
    .locals 0

    .prologue
    .line 1624
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1625
    return-void
.end method

.method protected activityOnStart()V
    .locals 0

    .prologue
    .line 1632
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 1633
    return-void
.end method

.method protected activityOnStop()V
    .locals 0

    .prologue
    .line 1628
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 1629
    return-void
.end method

.method public addConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    .prologue
    .line 323
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 324
    return-void
.end method

.method public addDialog(Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    return-void
.end method

.method public addInterceptOnBackPressedEventListener(Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;

    .prologue
    .line 1088
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->interceptOnBackPressedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1089
    return-void
.end method

.method public addOnActivityResultListener(Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;

    .prologue
    .line 1093
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onActivityResultListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1094
    return-void
.end method

.method public addOnCreateOptionsMenuEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onCreateOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1099
    return-void
.end method

.method public addOnInstanceStateEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1079
    return-void
.end method

.method public addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .prologue
    .line 1073
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1074
    return-void
.end method

.method public addOnPrepareOptionsMenuEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;

    .prologue
    .line 1103
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onPrepareOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1104
    return-void
.end method

.method public addOnWindowFocusChangedEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowFocusChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 1084
    return-void
.end method

.method public addWindowToStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    .line 172
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string v1, "TiBaseActivity"

    const-string v2, "Window already exists in stack"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    .line 177
    .local v0, "isEmpty":Z
    if-nez v0, :cond_2

    .line 178
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 180
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 181
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    goto :goto_0
.end method

.method protected createLayout()Landroid/view/View;
    .locals 4

    .prologue
    .line 449
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 451
    .local v0, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v2, "layout"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "layoutFromIntent":Ljava/lang/String;
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 460
    :cond_0
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v2

    .line 455
    :cond_1
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public deregisterOrientationChangedListener()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 339
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 833
    const/4 v1, 0x0

    .line 836
    .local v1, "handled":Z
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_0

    .line 837
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 842
    .local v3, "window":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    if-nez v3, :cond_1

    .line 843
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 960
    :goto_1
    return v4

    .line 839
    .end local v3    # "window":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .restart local v3    # "window":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    goto :goto_0

    .line 846
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 956
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 957
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_3
    move v4, v1

    .line 960
    goto :goto_1

    .line 849
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 850
    const-string v0, "android:back"

    .line 851
    .local v0, "backEvent":Ljava/lang/String;
    const/4 v2, 0x0

    .line 855
    .local v2, "proxy":Lorg/appcelerator/kroll/KrollProxy;
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 856
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 861
    :cond_4
    :goto_3
    if-eqz v2, :cond_2

    .line 862
    invoke-virtual {v2, v0, v6}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 863
    const/4 v1, 0x1

    goto :goto_2

    .line 857
    :cond_5
    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 858
    move-object v2, v3

    goto :goto_3

    .line 870
    .end local v0    # "backEvent":Ljava/lang/String;
    .end local v2    # "proxy":Lorg/appcelerator/kroll/KrollProxy;
    :sswitch_1
    const-string v4, "androidcamera"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 871
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 872
    const-string v4, "androidcamera"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 874
    :cond_6
    const/4 v1, 0x1

    .line 877
    :cond_7
    const-string v4, "android:camera"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 878
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_8

    .line 879
    const-string v4, "android:camera"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 881
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 887
    :sswitch_2
    const-string v4, "androidfocus"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 888
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_9

    .line 889
    const-string v4, "androidfocus"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 891
    :cond_9
    const/4 v1, 0x1

    .line 894
    :cond_a
    const-string v4, "android:focus"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 895
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_b

    .line 896
    const-string v4, "android:focus"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 898
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 904
    :sswitch_3
    const-string v4, "androidsearch"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 905
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 906
    const-string v4, "androidsearch"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 908
    :cond_c
    const/4 v1, 0x1

    .line 911
    :cond_d
    const-string v4, "android:search"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 912
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_e

    .line 913
    const-string v4, "android:search"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 915
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 921
    :sswitch_4
    const-string v4, "androidvolup"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 922
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_f

    .line 923
    const-string v4, "androidvolup"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 925
    :cond_f
    const/4 v1, 0x1

    .line 928
    :cond_10
    const-string v4, "android:volup"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_11

    .line 930
    const-string v4, "android:volup"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 932
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 938
    :sswitch_5
    const-string v4, "androidvoldown"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 939
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_12

    .line 940
    const-string v4, "androidvoldown"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 942
    :cond_12
    const/4 v1, 0x1

    .line 945
    :cond_13
    const-string v4, "android:voldown"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 946
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_14

    .line 947
    const-string v4, "android:voldown"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 949
    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 846
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_1
        0x50 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1585
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 1587
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 1589
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v1

    .line 1591
    .local v1, "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiRootActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1592
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    .line 1603
    .end local v0    # "app":Lorg/appcelerator/titanium/TiApplication;
    .end local v1    # "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    :cond_0
    :goto_0
    return-void

    .line 1593
    .restart local v0    # "app":Lorg/appcelerator/titanium/TiApplication;
    .restart local v1    # "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    :cond_1
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1599
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiApplication;->setForceFinishRootActivity(Z)V

    goto :goto_0
.end method

.method protected fireOnDestroy()V
    .locals 3

    .prologue
    .line 1569
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    if-nez v0, :cond_1

    .line 1570
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "destroy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1573
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 1575
    :cond_1
    return-void
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    return-object v0
.end method

.method protected getIntentBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 350
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method protected getIntentInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 362
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method protected getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 368
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 374
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    return-object v0
.end method

.method public getOriginalOrientationMode()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    return v0
.end method

.method protected getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .line 757
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    invoke-static {v0}, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->addSupportHelper(Lorg/appcelerator/titanium/util/TiActivitySupportHelper;)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelperId:I

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public getUniqueResultCode()I
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->getUniqueResultCode()I

    move-result v0

    return v0
.end method

.method public getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    return-object v0
.end method

.method protected handleSendMessage(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    .line 739
    :try_start_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 740
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 750
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TiBaseActivity"

    const-string v3, "Unable to message creator. finishing."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 746
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "TiBaseActivity"

    const-string v3, "Unable to message creator. finishing."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0
.end method

.method public isInForeground()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    return v0
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I
    .param p3, "resultHandler"    # Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 775
    return-void
.end method

.method public launchIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;Lorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "resultHandler"    # Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    .prologue
    .line 782
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->launchIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;Lorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 783
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 788
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 789
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onActivityResultListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 790
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onActivityResultListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;
    :try_start_1
    invoke-static {p0, v1, p1, p2, p3}, Lorg/appcelerator/titanium/TiLifecycle;->fireOnActivityResultEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;IILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v2

    .line 794
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching onActivityResult event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 797
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 798
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 799
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .prologue
    .line 804
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->interceptOnBackPressedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 805
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->interceptOnBackPressedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;
    :try_start_1
    invoke-interface {v1}, Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;->interceptOnBackPressed()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 808
    :try_start_2
    monitor-exit v5

    .line 828
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;
    :goto_1
    return-void

    .line 811
    .restart local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;
    :catch_0
    move-exception v2

    .line 812
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching interceptOnBackPressed event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 815
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 817
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->topWindowOnStack()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v3

    .line 821
    .local v3, "topWindow":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-eqz v3, :cond_2

    const-string v4, "androidback"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 822
    const-string v4, "androidback"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 826
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1045
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1047
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1048
    .local v1, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    invoke-interface {v2, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;->onConfigurationChanged(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1052
    .end local v1    # "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 563
    const-string v7, "TiBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onCreate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iput-boolean v11, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 566
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    .line 568
    .local v6, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 569
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 570
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 580
    const-string v7, "TiBaseActivity"

    const-string v8, "Runtime has been disposed or app has been killed. Finishing."

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 582
    const/16 v7, 0xfa

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 583
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 587
    :cond_2
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->addToActivityStack(Landroid/app/Activity;)V

    .line 590
    new-instance v7, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v7, p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 593
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementActivityRefCount()V

    .line 595
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 596
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 597
    const-string v7, "messenger"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 598
    const-string v7, "messenger"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Messenger;

    iput-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    .line 599
    const-string v7, "msgActivityCreatedId"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 600
    const-string v7, "messageId"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 603
    :cond_3
    const-string v7, "windowPixelFormat"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 604
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const-string v8, "windowPixelFormat"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setFormat(I)V

    .line 609
    :cond_4
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->intializeDisplayMetrics(Landroid/app/Activity;)V

    .line 611
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    if-nez v7, :cond_5

    .line 612
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->createLayout()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    .line 614
    :cond_5
    if-eqz v1, :cond_6

    const-string v7, "keepScreenOn"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 615
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    const-string v8, "keepScreenOn"

    iget-object v9, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 620
    :cond_6
    const-string v7, "theme"

    invoke-virtual {p0, v7, v10}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v5

    .line 621
    .local v5, "theme":I
    if-eq v5, v10, :cond_7

    .line 622
    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/TiBaseActivity;->setTheme(I)V

    .line 627
    :cond_7
    if-eqz v1, :cond_8

    const-string v7, "splitActionBar"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 628
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/Window;->setUiOptions(I)V

    .line 632
    :cond_8
    if-eqz v1, :cond_9

    const-string v7, "translucent"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 633
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->supportRequestWindowFeature(I)Z

    .line 634
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->supportRequestWindowFeature(I)Z

    .line 640
    :cond_9
    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 641
    .local v4, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v6, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 644
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 645
    invoke-virtual {p0, v12}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 647
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 649
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated(Landroid/os/Bundle;)V

    .line 652
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v7, :cond_a

    .line 653
    const-string v7, "onCreate"

    invoke-direct {p0, v7, v13}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 654
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v8, "create"

    invoke-virtual {v7, v8, v13}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 658
    :cond_a
    invoke-virtual {v6, p0, v4}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 660
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->setContentView(Landroid/view/View;)V

    .line 664
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 666
    iget v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 668
    iget v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 672
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getRequestedOrientation()I

    move-result v7

    iput v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    .line 674
    new-instance v7, Lorg/appcelerator/titanium/TiBaseActivity$6;

    const/4 v8, 0x3

    invoke-direct {v7, p0, p0, v8}, Lorg/appcelerator/titanium/TiBaseActivity$6;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/Context;I)V

    sput-object v7, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    .line 688
    sget-object v7, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v7}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v7

    if-ne v7, v11, :cond_c

    .line 689
    sget-object v7, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v7}, Landroid/view/OrientationEventListener;->enable()V

    .line 695
    :goto_1
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v7, :cond_b

    .line 696
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowActivityCreated()V

    .line 698
    :cond_b
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v8

    monitor-enter v8

    .line 699
    :try_start_0
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .local v2, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v7, 0x5

    :try_start_1
    invoke-static {p0, v2, p1, v7}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 703
    :catch_0
    move-exception v3

    .line 704
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "TiBaseActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error dispatching lifecycle event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 707
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 691
    :cond_c
    const-string v7, "TiBaseActivity"

    const-string v8, "Cannot detect orientation"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget-object v7, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v7}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_1

    .line 707
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_d
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 970
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-nez v5, :cond_0

    .line 990
    :goto_0
    return v4

    .line 974
    :cond_0
    const/4 v2, 0x0

    .line 975
    .local v2, "listenerExists":Z
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onCreateOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 976
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onCreateOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;
    const/4 v2, 0x1

    .line 979
    :try_start_1
    invoke-static {p0, v1, p1}, Lorg/appcelerator/titanium/TiLifecycle;->fireOnCreateOptionsMenuEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;Landroid/view/Menu;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 980
    :catch_0
    move-exception v3

    .line 981
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dispatching OnCreateOptionsMenuEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 984
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 986
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-nez v5, :cond_2

    .line 987
    new-instance v5, Lorg/appcelerator/titanium/util/TiMenuSupport;

    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v5, v6}, Lorg/appcelerator/titanium/util/TiMenuSupport;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    iput-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 990
    :cond_2
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v5, v4, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onCreateOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1442
    const-string v6, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onDestroy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v6, :cond_0

    .line 1444
    const-string v6, "onDestroy"

    invoke-direct {p0, v6, v10}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1447
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 1448
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    .line 1450
    .local v4, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    .line 1452
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1453
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1454
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1455
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1518
    :cond_1
    :goto_0
    return-void

    .line 1460
    :cond_2
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 1461
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    .local v2, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v6, 0x4

    :try_start_1
    invoke-static {p0, v2, v6}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1465
    :catch_0
    move-exception v3

    .line 1466
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "TiBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error dispatching lifecycle event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1469
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1471
    sget-object v6, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v6}, Landroid/view/OrientationEventListener;->disable()V

    .line 1473
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1475
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v1

    .line 1479
    .local v1, "isFinishing":Z
    if-eqz v1, :cond_4

    .line 1480
    const-string v6, "windowId"

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v5

    .line 1481
    .local v5, "windowId":I
    invoke-static {v5}, Lorg/appcelerator/titanium/TiActivityWindows;->removeWindow(I)V

    .line 1482
    iget v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelperId:I

    invoke-static {v6}, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->removeSupportHelper(I)V

    .line 1485
    .end local v5    # "windowId":I
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->fireOnDestroy()V

    .line 1487
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    instance-of v6, v6, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v6, :cond_5

    .line 1488
    const-string v6, "TiBaseActivity"

    const-string v7, "Layout cleanup."

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    check-cast v6, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 1491
    :cond_5
    iput-object v10, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    .line 1494
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v6, :cond_6

    .line 1495
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 1496
    iput-object v10, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 1499
    :cond_6
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v6, :cond_7

    .line 1500
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v6, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->closeFromActivity(Z)V

    .line 1501
    iput-object v10, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 1504
    :cond_7
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-eqz v6, :cond_8

    .line 1505
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/util/TiMenuSupport;->destroy()V

    .line 1506
    iput-object v10, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 1509
    :cond_8
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v6, :cond_9

    .line 1510
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->release()V

    .line 1511
    iput-object v10, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 1516
    :cond_9
    invoke-static {v1}, Lorg/appcelerator/kroll/KrollRuntime;->decrementActivityRefCount(Z)V

    .line 1517
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1059
    const-string v2, "TiBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onNewIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_0

    .line 1062
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v1, p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 1063
    .local v1, "ip":Lorg/appcelerator/titanium/proxy/IntentProxy;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1064
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "newintent"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1067
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "newIntent"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1069
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "ip":Lorg/appcelerator/titanium/proxy/IntentProxy;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 996
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1012
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 998
    :pswitch_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_0

    .line 999
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActionBar()Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    move-result-object v0

    .line 1000
    .local v0, "actionBarProxy":Lorg/appcelerator/titanium/proxy/ActionBarProxy;
    if-eqz v0, :cond_0

    .line 1001
    const-string v4, "onHomeIconItemSelected"

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 1003
    .local v2, "onHomeIconItemSelected":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1004
    .local v1, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "source"

    invoke-virtual {v1, v4, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    if-eqz v2, :cond_0

    .line 1006
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v4, v5}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 996
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1162
    iput-boolean v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 1163
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_0

    .line 1164
    const-string v4, "onPause"

    invoke-direct {p0, v4, v9}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1166
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1167
    iput-boolean v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    .line 1169
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onPause"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 1172
    .local v3, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1173
    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    .line 1174
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1175
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1214
    :cond_1
    :goto_0
    return-void

    .line 1180
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1181
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 1184
    :cond_3
    invoke-static {v8}, Lorg/appcelerator/titanium/TiApplication;->updateActivityTransitionState(Z)V

    .line 1185
    invoke-virtual {v3, p0, v9}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1186
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 1188
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1189
    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    .line 1195
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_4

    .line 1196
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v5, "pause"

    invoke-virtual {v4, v5, v9}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1199
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 1200
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x2

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1204
    :catch_0
    move-exception v2

    .line 1205
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1208
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1192
    :cond_5
    invoke-direct {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    goto :goto_1

    .line 1208
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1211
    if-eqz v3, :cond_1

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1212
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    invoke-virtual {v4}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppBackgroundEvent()V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1019
    const/4 v2, 0x0

    .line 1020
    .local v2, "listenerExists":Z
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onPrepareOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 1021
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onPrepareOptionsMenuListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;
    const/4 v2, 0x1

    .line 1024
    :try_start_1
    invoke-static {p0, v1, p1}, Lorg/appcelerator/titanium/TiLifecycle;->fireOnPrepareOptionsMenuEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;Landroid/view/Menu;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v3

    .line 1026
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching OnPrepareOptionsMenuEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1029
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1030
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onPrepareOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v4

    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_0

    .line 511
    :goto_0
    :pswitch_0
    return-void

    .line 490
    :pswitch_1
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->cameraPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->cameraCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    const-string v2, "Camera"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->permissionCallback([ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :pswitch_2
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->oldCalendarPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->oldCalendarCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    const-string v2, "Calendar"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->permissionCallback([ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :pswitch_3
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->calendarPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->calendarCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    const-string v2, "Calendar"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->permissionCallback([ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :pswitch_4
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->locationPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->locationCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    const-string v2, "Location"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->permissionCallback([ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :pswitch_5
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->contactsPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->contactsCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    const-string v2, "Contacts"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->permissionCallback([ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1381
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 1382
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_0

    .line 1383
    const-string v2, "onRestart"

    invoke-direct {p0, v2, v5}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1385
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 1387
    const-string v2, "TiBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onRestart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 1390
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1391
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1392
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1410
    :cond_1
    :goto_0
    return-void

    .line 1398
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_1

    .line 1402
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1403
    .local v0, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1405
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "restart"

    invoke-virtual {v2, v3, v5}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1408
    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1545
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1547
    const-string v3, "supportHelperId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1548
    const-string v3, "supportHelperId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelperId:I

    .line 1549
    iget v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelperId:I

    invoke-static {p0, v3}, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->retrieveSupportHelper(Lorg/appcelerator/titanium/TiBaseActivity;I)Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .line 1550
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    if-nez v3, :cond_0

    .line 1551
    const-string v3, "TiBaseActivity"

    const-string v4, "Unable to retrieve the activity support helper."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1555
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    const/4 v3, 0x7

    :try_start_1
    invoke-static {p1, v1, v3}, Lorg/appcelerator/titanium/TiLifecycle;->fireInstanceStateEvent(Landroid/os/Bundle;Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1558
    :catch_0
    move-exception v2

    .line 1559
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching OnInstanceStateEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1562
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1563
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1223
    iput-boolean v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 1224
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_0

    .line 1225
    const-string v4, "onResume"

    invoke-direct {p0, v4, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1227
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1228
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1271
    :cond_1
    :goto_0
    return-void

    .line 1232
    :cond_2
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onResume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 1235
    .local v3, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1236
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1237
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 1242
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1243
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 1246
    :cond_4
    invoke-virtual {v3, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1247
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/appcelerator/titanium/TiApplication;->updateActivityTransitionState(Z)V

    .line 1249
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_5

    .line 1250
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v5, "resume"

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1253
    :cond_5
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 1254
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x1

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1258
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1262
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1264
    iput-boolean v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    .line 1268
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1269
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    invoke-virtual {v4}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppForegroundEvent()V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1523
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1527
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    if-eqz v3, :cond_0

    .line 1528
    const-string v3, "supportHelperId"

    iget v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelperId:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1531
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1532
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->instanceStateListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    const/4 v3, 0x6

    :try_start_1
    invoke-static {p1, v1, v3}, Lorg/appcelerator/titanium/TiLifecycle;->fireInstanceStateEvent(Landroid/os/Bundle;Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1535
    :catch_0
    move-exception v2

    .line 1536
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching OnInstanceStateEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1539
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1540
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1281
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 1282
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v5, :cond_0

    .line 1283
    const-string v5, "onStart"

    invoke-direct {p0, v5, v8}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1285
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 1286
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1333
    :cond_1
    :goto_0
    return-void

    .line 1292
    :cond_2
    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1294
    const-string v5, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onStart"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    .line 1298
    .local v4, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1299
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1300
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 1305
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 1307
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v5, :cond_4

    .line 1311
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1312
    .local v3, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v4, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1314
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v6, "start"

    invoke-virtual {v5, v6, v8}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1317
    invoke-virtual {v4, p0, v3}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1320
    .end local v3    # "tempCurrentActivity":Landroid/app/Activity;
    :cond_4
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 1321
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p0, v1, v5}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1325
    :catch_0
    move-exception v2

    .line 1326
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dispatching lifecycle event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1329
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1332
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    sput v5, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1342
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->inForeground:Z

    .line 1343
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v3, :cond_0

    .line 1344
    const-string v3, "onStop"

    invoke-direct {p0, v3, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1346
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 1348
    const-string v3, "TiBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onStop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1351
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1352
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1372
    :cond_1
    :goto_0
    return-void

    .line 1357
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v3, :cond_3

    .line 1358
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "stop"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1361
    :cond_3
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1362
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v3, 0x3

    :try_start_1
    invoke-static {p0, v1, v3}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1366
    :catch_0
    move-exception v2

    .line 1367
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching lifecycle event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1370
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1371
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 1419
    const-string v0, "TiBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUserLeaveHint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1422
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_2

    .line 1429
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "userleavehint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1432
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserLeaveHint()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1142
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowFocusChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1143
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowFocusChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;
    :try_start_1
    invoke-interface {v1, p1}, Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;->onWindowFocusChanged(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v2

    .line 1148
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching onWindowFocusChanged event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1151
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1152
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 1153
    return-void
.end method

.method public registerOrientationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .prologue
    .line 333
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 334
    return-void
.end method

.method public removeConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    .prologue
    .line 328
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public removeDialog(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "d"    # Landroid/app/Dialog;

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 295
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    .line 296
    .local v1, "p":Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->release()V

    .line 298
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    .end local v1    # "p":Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    :cond_0
    return-void

    .line 294
    .restart local v1    # "p":Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .prologue
    .line 1109
    return-void
.end method

.method public removeWindowFromStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 190
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move v0, v2

    .line 191
    .local v0, "isTopWindow":Z
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 195
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 196
    .local v1, "nextWindow":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 198
    .end local v1    # "nextWindow":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_1
    return-void
.end method

.method protected sendMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBaseActivity$7;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$7;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 306
    return-void
.end method

.method protected setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 515
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 518
    :cond_0
    return-void
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    .line 319
    return-void
.end method

.method public setLayoutProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    instance-of v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 266
    :cond_0
    return-void
.end method

.method public setViewProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 275
    return-void
.end method

.method public setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 254
    return-void
.end method

.method protected shouldFinishRootActivity()Z
    .locals 2

    .prologue
    .line 1579
    const-string v0, "finishRoot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public topWindowOnStack()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    goto :goto_0
.end method

.method protected updateTitle()V
    .locals 8

    .prologue
    .line 380
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v6, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 383
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .local v3, "oldTitle":Ljava/lang/String;
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "newTitle":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 387
    const-string v3, ""

    .line 390
    :cond_2
    if-nez v2, :cond_3

    .line 391
    const-string v2, ""

    .line 394
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 395
    move-object v1, v2

    .line 396
    .local v1, "fnewTitle":Ljava/lang/String;
    new-instance v6, Lorg/appcelerator/titanium/TiBaseActivity$1;

    invoke-direct {v6, p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity$1;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    .end local v1    # "fnewTitle":Ljava/lang/String;
    .end local v2    # "newTitle":Ljava/lang/String;
    .end local v3    # "oldTitle":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v6, :cond_0

    .line 407
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "statusBarColor"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 408
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "statusBarColor"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "statusBarColor":Ljava/lang/String;
    new-instance v6, Lorg/appcelerator/titanium/TiBaseActivity$2;

    invoke-direct {v6, p0, v4}, Lorg/appcelerator/titanium/TiBaseActivity$2;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    .end local v4    # "statusBarColor":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "barColor"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 419
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "barColor"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "barColor":Ljava/lang/String;
    new-instance v6, Lorg/appcelerator/titanium/TiBaseActivity$3;

    invoke-direct {v6, p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity$3;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    .end local v0    # "barColor":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "titleAttributes"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 428
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v7, "titleAttributes"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 429
    .local v5, "titleAttributes":Ljava/util/HashMap;
    const-string v7, "title"

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v6, Lorg/appcelerator/titanium/TiBaseActivity$4;

    invoke-direct {v6, p0, v5}, Lorg/appcelerator/titanium/TiBaseActivity$4;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/util/HashMap;)V

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    .end local v5    # "titleAttributes":Ljava/util/HashMap;
    :cond_7
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v6

    if-nez v6, :cond_0

    .line 438
    new-instance v6, Lorg/appcelerator/titanium/TiBaseActivity$5;

    invoke-direct {v6, p0}, Lorg/appcelerator/titanium/TiBaseActivity$5;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;)V

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected windowCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 524
    const-string v8, "fullscreen"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 525
    .local v0, "fullscreen":Z
    const-string v8, "modal"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 526
    .local v2, "modal":Z
    const-string v8, "windowSoftInputMode"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v3

    .line 527
    .local v3, "softInputMode":I
    const-string v8, "windowFlags"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v5

    .line 528
    .local v5, "windowFlags":I
    if-eq v3, v11, :cond_4

    const/4 v1, 0x1

    .line 530
    .local v1, "hasSoftInputMode":Z
    :goto_0
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setFullscreen(Z)V

    .line 532
    if-lez v5, :cond_0

    .line 533
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->addFlags(I)V

    .line 536
    :cond_0
    if-eqz v2, :cond_1

    .line 537
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-ge v8, v9, :cond_1

    .line 539
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 543
    :cond_1
    if-eqz v1, :cond_2

    .line 544
    const-string v8, "TiBaseActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "windowSoftInputMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 548
    :cond_2
    const-string v8, "useActivityWindow"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 549
    .local v4, "useActivityWindow":Z
    if-eqz v4, :cond_3

    .line 550
    const-string v7, "windowId"

    invoke-virtual {p0, v7, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v6

    .line 551
    .local v6, "windowId":I
    invoke-static {p0, v6, p1}, Lorg/appcelerator/titanium/TiActivityWindows;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;ILandroid/os/Bundle;)V

    .line 553
    .end local v6    # "windowId":I
    :cond_3
    return-void

    .end local v1    # "hasSoftInputMode":Z
    .end local v4    # "useActivityWindow":Z
    :cond_4
    move v1, v7

    .line 528
    goto :goto_0
.end method
