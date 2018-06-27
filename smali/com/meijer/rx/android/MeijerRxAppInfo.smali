.class public final Lcom/meijer/rx/android/MeijerRxAppInfo;
.super Ljava/lang/Object;
.source "MeijerRxAppInfo.java"

# interfaces
.implements Lorg/appcelerator/titanium/ITiAppInfo;


# static fields
.field private static final LCAT:Ljava/lang/String; = "AppInfo"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, ""

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "2016 by mscripts"

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "production"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "mscripts mobile pharmacy"

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "359bcfc5-7564-49b6-9333-c02520296204"

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "appicon.png"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "com.meijer.rx.android"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "Meijer Rx"

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "mscripts"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "http://www.mscripts.com"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "7.2.6"

    return-object v0
.end method

.method public isAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
