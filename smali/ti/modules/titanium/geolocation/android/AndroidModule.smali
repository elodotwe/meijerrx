.class public Lti/modules/titanium/geolocation/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field protected static final MSG_ADD_LOCATION_PROVIDER:I = 0x137

.field protected static final MSG_LAST_ID:I = 0x138

.field protected static final MSG_REMOVE_LOCATION_PROVIDER:I = 0x138

.field public static final PROVIDER_GPS:Ljava/lang/String; = "gps"

.field public static final PROVIDER_NETWORK:Ljava/lang/String; = "network"

.field public static final PROVIDER_PASSIVE:Ljava/lang/String; = "passive"

.field private static final TAG:Ljava/lang/String; = "AndroidModule"


# instance fields
.field private geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

.field public manualLocationProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field public manualLocationRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/geolocation/android/LocationRuleProxy;",
            ">;"
        }
    .end annotation
.end field

.field public manualMode:Z

.field private tiLocation:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "geolocation.android"

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollModule;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    .line 66
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "geolocation"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getModuleByName(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/geolocation/GeolocationModule;

    iput-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iput-object p0, v0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-object v0, v0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iput-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    .line 69
    return-void
.end method

.method private doAddLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 5
    .param p1, "locationProvider"    # Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .prologue
    .line 206
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "providerName":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v2, v1}, Lti/modules/titanium/geolocation/TiLocation;->isProvider(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "AndroidModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add location provider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 215
    .local v0, "existingLocationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    if-nez v0, :cond_2

    .line 216
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :goto_1
    iget-boolean v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget v2, v2, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v2, :cond_0

    .line 229
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v2, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-boolean v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget v2, v2, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v2, :cond_3

    .line 222
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 225
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private doRemoveLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 2
    .param p1, "locationProvider"    # Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .prologue
    .line 258
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget v0, v0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public addLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 3
    .param p1, "locationProvider"    # Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .prologue
    .line 187
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/android/AndroidModule;->doAddLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/android/AndroidModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x137

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public addLocationRule(Lti/modules/titanium/geolocation/android/LocationRuleProxy;)V
    .locals 1
    .param p1, "locationRule"    # Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .prologue
    .line 272
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public createLocationProvider([Ljava/lang/Object;)Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    .locals 4
    .param p1, "creationArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "name":Ljava/lang/String;
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object v2, p1, v3

    instance-of v2, v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 149
    aget-object v2, p1, v3

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "nameProperty":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 151
    iget-object v3, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lti/modules/titanium/geolocation/TiLocation;->isProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 152
    check-cast v0, Ljava/lang/String;

    .line 157
    .end local v1    # "nameProperty":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 158
    new-instance v2, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    iget-object v3, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-direct {v2, p1, v3}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>([Ljava/lang/Object;Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    return-object v2

    .line 161
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid provider name, unable to create location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createLocationRule([Ljava/lang/Object;)Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    .locals 1
    .param p1, "creationArgs"    # [Ljava/lang/Object;

    .prologue
    .line 176
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-direct {v0, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "Ti.Geolocation.Android"

    return-object v0
.end method

.method public getManualMode()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 77
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 92
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 79
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .local v0, "locationProvider":Ljava/lang/Object;
    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .end local v0    # "locationProvider":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/geolocation/android/AndroidModule;->doAddLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .restart local v0    # "locationProvider":Ljava/lang/Object;
    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .end local v0    # "locationProvider":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/geolocation/android/AndroidModule;->doRemoveLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 3
    .param p1, "locationProvider"    # Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .prologue
    .line 242
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/android/AndroidModule;->doRemoveLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/android/AndroidModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x138

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public removeLocationRule(Lti/modules/titanium/geolocation/android/LocationRuleProxy;)V
    .locals 2
    .param p1, "locationRule"    # Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .prologue
    .line 283
    iget-object v1, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 284
    .local v0, "locationRuleIndex":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 287
    :cond_0
    return-void
.end method

.method public setManualMode(Z)V
    .locals 2
    .param p1, "manualMode"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    if-eq v0, p1, :cond_0

    .line 120
    iput-boolean p1, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    .line 121
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-object v1, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-boolean v0, v0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-object v1, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-object v1, v1, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-object v1, p0, Lti/modules/titanium/geolocation/android/AndroidModule;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    iget-object v1, v1, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    goto :goto_0
.end method
