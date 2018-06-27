.class public Lti/ga/TigaModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "TigaModule.java"


# static fields
.field public static final MODULE_FULL_NAME:Ljava/lang/String; = "ti.ga"


# instance fields
.field private _dispatchInterval:I

.field private final _ga:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 27
    const/16 v0, 0x1e

    iput v0, p0, Lti/ga/TigaModule;->_dispatchInterval:I

    .line 32
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 33
    return-void
.end method

.method public static onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 0
    .param p0, "app"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 39
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 60
    return-void
.end method

.method public getDispatchInterval()J
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lti/ga/TigaModule;->_dispatchInterval:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getOptOut()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    return v0
.end method

.method public setDebug(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    goto :goto_0
.end method

.method public setDispatchInterval(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 71
    iput p1, p0, Lti/ga/TigaModule;->_dispatchInterval:I

    .line 72
    iget-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 73
    return-void
.end method

.method public setOptOut(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lti/ga/TigaModule;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 83
    return-void
.end method

.method public setTrackUncaughtExceptions()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "ti.ga"

    const-string v1, "setTrackUncaughtExceptions is only available on iOS"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
