.class public Lti/modules/titanium/analytics/AnalyticsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AnalyticsModule.java"


# static fields
.field protected static final PROPERTY_APP_FEATURE:Ljava/lang/String; = "app.feature"

.field protected static final PROPERTY_APP_NAV:Ljava/lang/String; = "app.nav"

.field protected static final PROPERTY_APP_SETTINGS:Ljava/lang/String; = "app.settings"

.field protected static final PROPERTY_APP_TIMED:Ljava/lang/String; = "app.timed"

.field protected static final PROPERTY_APP_USER:Ljava/lang/String; = "app.user"

.field private static final TAG:Ljava/lang/String; = "AnalyticsModule"


# instance fields
.field private analytics:Lcom/appcelerator/analytics/APSAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 36
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalytics;->getInstance()Lcom/appcelerator/analytics/APSAnalytics;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 45
    invoke-direct {p0}, Lti/modules/titanium/analytics/AnalyticsModule;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public featureEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    instance-of v1, p2, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppFeatureEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 96
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollDict;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppFeatureEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AnalyticsModule"

    const-string v2, "Cannot convert data into JSON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppFeatureEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v1, "AnalyticsModule"

    const-string v2, "Analytics is disabled.  To enable, please update the <analytics></analytics> node in your tiapp.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public filterEvents(Ljava/lang/Object;)V
    .locals 4
    .param p1, "eventsObj"    # Ljava/lang/Object;

    .prologue
    .line 78
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 79
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "eventsObj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 80
    .local v0, "events":[Ljava/lang/Object;
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 81
    .local v2, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 82
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/TiApplication;->setFilterAnalyticsEvents([Ljava/lang/String;)V

    .line 86
    .end local v0    # "events":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "temp":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "Ti.Analytics"

    return-object v0
.end method

.method public getLastEvent()Ljava/lang/String;
    .locals 7

    .prologue
    .line 111
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v3

    .line 113
    .local v3, "platformHelper":Lorg/appcelerator/titanium/util/TiPlatformHelper;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLastEvent()Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v1

    .line 114
    .local v1, "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    if-eqz v1, :cond_1

    .line 116
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "ver"

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getDBVersion()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v4, "id"

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLastEventID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v4, "event"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v4, "ts"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v4, "mid"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v4, "sid"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v4, "aguid"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v4, "seq"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventSeq()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->mustExpandPayload()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const-string v4, "data"

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .end local v1    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "platformHelper":Lorg/appcelerator/titanium/util/TiPlatformHelper;
    :goto_1
    return-object v4

    .line 128
    .restart local v1    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "platformHelper":Lorg/appcelerator/titanium/util/TiPlatformHelper;
    :cond_0
    const-string v4, "data"

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "AnalyticsModule"

    const-string v5, "Error generating last event."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .end local v3    # "platformHelper":Lorg/appcelerator/titanium/util/TiPlatformHelper;
    :cond_1
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 136
    :cond_2
    const-string v4, "AnalyticsModule"

    const-string v5, "Analytics is disabled.  To enable, please update the <analytics></analytics> node in your tiapp.xml"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public navEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .param p4, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    if-nez p3, :cond_0

    .line 57
    const-string p3, ""

    .line 59
    :cond_0
    instance-of v1, p4, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    invoke-static {p4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppNavEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz p4, :cond_2

    .line 64
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollDict;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppNavEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AnalyticsModule"

    const-string v2, "Cannot convert data into JSON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/analytics/AnalyticsModule;->analytics:Lcom/appcelerator/analytics/APSAnalytics;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/appcelerator/analytics/APSAnalytics;->sendAppNavEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v1, "AnalyticsModule"

    const-string v2, "Analytics is disabled.  To enable, please update the <analytics></analytics> node in your tiapp.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
