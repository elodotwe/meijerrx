.class public final Lcom/appcelerator/analytics/APSAnalytics;
.super Ljava/lang/Object;
.source "APSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appcelerator/analytics/APSAnalytics$1;,
        Lcom/appcelerator/analytics/APSAnalytics$DeployType;,
        Lcom/appcelerator/analytics/APSAnalytics$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APSAnalytics"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/appcelerator/analytics/APSAnalytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/appcelerator/analytics/APSAnalytics$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/appcelerator/analytics/APSAnalytics;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalytics$InstanceHolder;->access$100()Lcom/appcelerator/analytics/APSAnalytics;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized throwUnlessEnabled()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->isAnalyticsInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "APSAnalytics has not been enabled. Call APSAnalytics.getInstance().enable(ctx, key, deploytype) to enable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized enable(Landroid/content/Context;Ljava/lang/String;Lcom/appcelerator/analytics/APSAnalytics$DeployType;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "deployType"    # Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 89
    const-string v1, "Invalid value for ctx. Context cannot be null.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    const-string v1, "Invalid value for appKey. App Key cannot be null.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    if-nez p3, :cond_2

    .line 95
    const-string v1, "Invalid value for deployType. Deploy Type cannot be null.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 99
    const-string v1, "Analytics not enabled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 103
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->isAnalyticsInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    const-string v1, "APSAnalytics"

    const-string v2, "APSAnalytics is already enabled. Skipping..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-static {}, Lcom/appcelerator/Appcelerator;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->setSdkVersion(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->initAnalytics()V

    .line 109
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->setDeployType(Lcom/appcelerator/analytics/APSAnalytics$DeployType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getDeployType()Lcom/appcelerator/analytics/APSAnalytics$DeployType;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getDeployType()Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sendAppBackgroundEvent()V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;->throwUnlessEnabled()V

    .line 143
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->createAppBackgroundEvent()Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAppEnrollEvent()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;->throwUnlessEnabled()V

    .line 121
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getDeployType()Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->createAppEnrollEvent(Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAppFeatureEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 215
    monitor-enter p0

    if-nez p1, :cond_0

    .line 216
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument eventName for Feature Event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;->throwUnlessEnabled()V

    .line 219
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    const-string v1, "app.feature"

    invoke-static {v1, p1, p2}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->createEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendAppForegroundEvent()V
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;->throwUnlessEnabled()V

    .line 132
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getDeployType()Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->createAppForegroundEvent(Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAppGeoEvent(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 152
    monitor-enter p0

    if-nez p1, :cond_0

    .line 153
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid location for Geo Event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 155
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;->throwUnlessEnabled()V

    .line 156
    invoke-static {p1}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->createAppGeoEvent(Landroid/location/Location;)Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v0

    .line 157
    .local v0, "geoEvent":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendAppNavEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "fromView"    # Ljava/lang/String;
    .param p2, "toView"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 175
    :cond_0
    const-string v3, "Argument fromView cannot be null.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    if-nez p2, :cond_2

    .line 178
    const-string v3, "Argument toView cannot be null.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_2
    if-nez p3, :cond_3

    .line 181
    const-string v3, "Argument eventName cannot be null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 186
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalytics;->throwUnlessEnabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    if-nez p4, :cond_6

    .line 190
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .end local p4    # "payload":Lorg/json/JSONObject;
    .local v1, "payload":Lorg/json/JSONObject;
    move-object p4, v1

    .line 199
    .end local v1    # "payload":Lorg/json/JSONObject;
    .restart local p4    # "payload":Lorg/json/JSONObject;
    :cond_5
    :goto_0
    const-string v3, "from"

    invoke-virtual {p4, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v3, "to"

    invoke-virtual {p4, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v3

    const-string v4, "app.nav"

    invoke-static {v4, p3, p4}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;->createEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :goto_1
    monitor-exit p0

    return-void

    .line 192
    :cond_6
    :try_start_4
    const-string v3, "from"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 193
    const-string v3, "from"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    :cond_7
    const-string v3, "to"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    const-string v3, "to"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1
.end method

.method public setSessionTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 241
    if-nez p3, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid unit for Session Timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->setSessionTimeout(J)V

    .line 246
    return-void
.end method
