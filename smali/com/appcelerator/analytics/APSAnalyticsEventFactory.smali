.class public Lcom/appcelerator/analytics/APSAnalyticsEventFactory;
.super Ljava/lang/Object;
.source "APSAnalyticsEventFactory.java"


# static fields
.field protected static final EVENT_APP_BACKGROUND:Ljava/lang/String; = "ti.background"

.field protected static final EVENT_APP_ENROLL:Ljava/lang/String; = "ti.enroll"

.field protected static final EVENT_APP_FOREGROUND:Ljava/lang/String; = "ti.foreground"

.field protected static final EVENT_APP_GEO:Ljava/lang/String; = "ti.geo"

.field protected static final EVENT_ERROR:Ljava/lang/String; = "ti.crash"

.field protected static final MAX_GEO_ANALYTICS_FREQUENCY:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "APSAnalyticsEventFactory"

.field protected static lastLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createAppBackgroundEvent()Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    const-string v1, "ti.background"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static createAppEnrollEvent(Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 8
    .param p0, "deployType"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    const/4 v3, 0x0

    .line 66
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "app_name"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v5, "oscpu"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getProcessorCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v5, "platform"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v5, "app_id"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v5, "ostype"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getOstype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v5, "osarch"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v5, "model"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v5, "deploytype"

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v5, "app_version"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v5, "tz"

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    const v7, 0xea60

    div-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v5, "os"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getOS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v5, "osver"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v5, "sdkver"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v5, "nettype"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getBuildType()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "buildType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    const-string v5, "buildtype"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_0
    new-instance v2, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    .end local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    const-string v5, "ti.enroll"

    invoke-direct {v2, v5, v4}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    move-object v3, v4

    .line 94
    .end local v0    # "buildType":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .end local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    const-string v5, "APSAnalyticsEventFactory"

    const-string v6, "Unable to encode foreground event"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v2, 0x0

    .restart local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    goto :goto_0

    .line 89
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method protected static createAppForegroundEvent(Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 7
    .param p0, "deployType"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 134
    .local v2, "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "app_name"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v4, "oscpu"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getProcessorCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    const-string v4, "platform"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v4, "app_id"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v4, "ostype"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getOstype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v4, "osarch"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v4, "model"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v4, "deploytype"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v4, "app_version"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v4, "tz"

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string v4, "os"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getOS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v4, "osver"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v4, "sdkver"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v4, "nettype"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getBuildType()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "buildType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    const-string v4, "buildtype"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_0
    new-instance v2, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    .end local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    const-string v4, "ti.foreground"

    invoke-direct {v2, v4, v3}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "buildType":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    :goto_0
    return-object v2

    .line 156
    .end local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "APSAnalyticsEventFactory"

    const-string v5, "Unable to encode foreground event"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v2, 0x0

    .restart local v2    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    goto :goto_0
.end method

.method protected static createAppGeoEvent(Landroid/location/Location;)Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 8
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    sget-object v4, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sget-object v6, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 225
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v3, "wrapper":Lorg/json/JSONObject;
    const-string v4, "to"

    invoke-static {p0}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    sget-object v4, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    if-eqz v4, :cond_2

    .line 229
    const-string v4, "from"

    sget-object v5, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    invoke-static {v5}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :goto_0
    new-instance v2, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    const-string v4, "ti.geo"

    invoke-direct {v2, v4, v3}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .local v2, "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    :try_start_1
    sput-object p0, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->lastLocation:Landroid/location/Location;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 240
    .end local v2    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .end local v3    # "wrapper":Lorg/json/JSONObject;
    .restart local v1    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    :cond_1
    :goto_1
    return-object v1

    .line 231
    .restart local v3    # "wrapper":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    const-string v4, "from"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 236
    .end local v3    # "wrapper":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v4, "APSAnalyticsEventFactory"

    const-string v5, "Error building ti.geo event"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .restart local v2    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .restart local v3    # "wrapper":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .restart local v1    # "result":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    goto :goto_2
.end method

.method protected static createEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 4
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 278
    if-nez p2, :cond_0

    .line 279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .end local p2    # "data":Lorg/json/JSONObject;
    .local v0, "data":Lorg/json/JSONObject;
    move-object p2, v0

    .line 281
    .end local v0    # "data":Lorg/json/JSONObject;
    .restart local p2    # "data":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "eventName"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    const-string v2, "eventName"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    :cond_1
    const-string v2, "eventName"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    new-instance v2, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    invoke-direct {v2, p0, p2}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-object v2

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "APSAnalyticsEventFactory"

    const-string v3, "Data object for event was not JSON, sending as string"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v2, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    invoke-direct {v2, p0, p2}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected static locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "loc"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "latitude"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 248
    const-string v1, "longitude"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 249
    const-string v1, "altitude"

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 250
    const-string v1, "accuracy"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 251
    const-string v1, "altitudeAccuracy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v1, "heading"

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 253
    const-string v1, "speed"

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 254
    const-string v1, "timestamp"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    return-object v0
.end method
