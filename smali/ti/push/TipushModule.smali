.class public Lti/push/TipushModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "TipushModule.java"


# static fields
.field public static final EVENT_CALLBACK:Ljava/lang/String; = "callback"

.field public static final PROPERTY_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field public static final PROPERTY_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final PROPERTY_SENDER_ID:Ljava/lang/String; = "senderId"

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TipushModule"

.field private static mProxy:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 63
    return-void
.end method

.method public static fireCallback(Ljava/lang/String;)V
    .locals 3
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v1, Lti/push/TipushModule;->mProxy:Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v1, :cond_0

    sget-object v1, Lti/push/TipushModule;->mProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "callback"

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "payload"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lti/push/TipushModule;->mProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "callback"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 92
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lti/push/TipushModule;->mProxy:Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 2
    .param p0, "app"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 67
    const-string v0, "TipushModule"

    const-string v1, "inside onAppCreate"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method public clearStatus(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 157
    const-string v3, "senderId"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "senderId":Ljava/lang/String;
    const-string v3, "success"

    invoke-virtual {p0, p1, v3}, Lti/push/TipushModule;->getFunction(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v2

    .line 160
    .local v2, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v3, "error"

    invoke-virtual {p0, p1, v3}, Lti/push/TipushModule;->getFunction(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v0

    .line 161
    .local v0, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v3, Lti/push/TipushModule$2;

    invoke-direct {v3, p0, v1, v2, v0}, Lti/push/TipushModule$2;-><init>(Lti/push/TipushModule;Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lti/push/TipushModule$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFunction(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p1, p2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p1, p2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 190
    check-cast v0, Lorg/appcelerator/kroll/KrollFunction;

    .line 197
    .end local v1    # "obj":Ljava/lang/Object;
    .local v0, "kFunction":Lorg/appcelerator/kroll/KrollFunction;
    :goto_0
    return-object v0

    .line 192
    .end local v0    # "kFunction":Lorg/appcelerator/kroll/KrollFunction;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "kFunction":Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 195
    .end local v0    # "kFunction":Lorg/appcelerator/kroll/KrollFunction;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "kFunction":Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0
.end method

.method public isGooglePlayServicesAvailable()I
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 78
    const-string v0, "callback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 79
    sput-object p3, Lti/push/TipushModule;->mProxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 80
    invoke-virtual {p0}, Lti/push/TipushModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lti/push/TipushModule;->fireCallback(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lti/push/TipushModule;->mProxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 73
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public retrieveDeviceToken(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 125
    const-string v3, "senderId"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "senderId":Ljava/lang/String;
    const-string v3, "success"

    invoke-virtual {p0, p1, v3}, Lti/push/TipushModule;->getFunction(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v2

    .line 128
    .local v2, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v3, "error"

    invoke-virtual {p0, p1, v3}, Lti/push/TipushModule;->getFunction(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v0

    .line 129
    .local v0, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v3, Lti/push/TipushModule$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lti/push/TipushModule$1;-><init>(Lti/push/TipushModule;Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lti/push/TipushModule$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method public updateGooglePlayServices()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.android.gms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/TiApplication;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
