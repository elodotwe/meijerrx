.class public Lti/ga/TrackerProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TrackerProxy.java"


# instance fields
.field private _debug:Z

.field private final _ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private _tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/ga/TrackerProxy;->_debug:Z

    .line 27
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lti/ga/TrackerProxy;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 28
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/util/HashMap;)V
    .locals 9
    .param p1, "props"    # Ljava/util/HashMap;

    .prologue
    .line 80
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 81
    .local v1, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "category"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "category":Ljava/lang/String;
    const-string v6, "action"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v6, "label"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "label":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 86
    .local v4, "value":J
    iget-object v6, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v7, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 93
    iget-boolean v6, p0, Lti/ga/TrackerProxy;->_debug:Z

    if-eqz v6, :cond_0

    .line 94
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent - category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent - action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent - label:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent - value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method public addException(Ljava/util/HashMap;)V
    .locals 6
    .param p1, "props"    # Ljava/util/HashMap;

    .prologue
    .line 132
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 133
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "description"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "description":Ljava/lang/String;
    const-string v3, "fatal"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 135
    .local v2, "isFatal":Z
    iget-object v3, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 140
    iget-boolean v3, p0, Lti/ga/TrackerProxy;->_debug:Z

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "ti.ga"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addException - description:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v4, "ti.ga"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addException - fatal:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_1

    const-string v3, "true"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void

    .line 142
    :cond_1
    const-string v3, "false"

    goto :goto_0
.end method

.method public addScreenView(Ljava/lang/String;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 71
    iget-boolean v0, p0, Lti/ga/TrackerProxy;->_debug:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "ti.ga"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addScreenView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method public addSocialNetwork(Ljava/util/HashMap;)V
    .locals 7
    .param p1, "props"    # Ljava/util/HashMap;

    .prologue
    .line 150
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 151
    .local v1, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "network"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "network":Ljava/lang/String;
    const-string v4, "action"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string v4, "target"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "target":Ljava/lang/String;
    iget-object v4, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->setNetwork(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->setTarget(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 162
    iget-boolean v4, p0, Lti/ga/TrackerProxy;->_debug:Z

    if-eqz v4, :cond_0

    .line 163
    const-string v4, "ti.ga"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSocialNetwork - network:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v4, "ti.ga"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSocialNetwork - action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "ti.ga"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSocialNetwork - target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public addTiming(Ljava/util/HashMap;)V
    .locals 9
    .param p1, "props"    # Ljava/util/HashMap;

    .prologue
    .line 106
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 107
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "category"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "category":Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "name":Ljava/lang/String;
    const-string v6, "label"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "label":Ljava/lang/String;
    const-string v6, "time"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 113
    .local v4, "time":J
    iget-object v6, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v7, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v7}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    invoke-virtual {v7, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 120
    iget-boolean v6, p0, Lti/ga/TrackerProxy;->_debug:Z

    if-eqz v6, :cond_0

    .line 121
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addTiming - category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addTiming - name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addTiming - label:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v6, "ti.ga"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addTiming - time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public endSession()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lti/ga/TrackerProxy;->_debug:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "ti.ga"

    const-string v1, "endSession is only available on iOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v3, 0x1

    .line 33
    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lti/ga/TrackerProxy;->_debug:Z

    .line 34
    const-string v1, "useSecure"

    invoke-virtual {p1, v1, v3}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, "useSecure":Z
    const-string v1, "trackingId"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lti/ga/TrackerProxy;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v2, "trackingId"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 42
    :goto_0
    iget-object v1, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/Tracker;->setAnonymizeIp(Z)V

    .line 43
    iget-object v1, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setUseSecure(Z)V

    .line 45
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 46
    return-void

    .line 39
    :cond_0
    const-string v1, "ti.ga"

    const-string v2, "trackingId is required"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lti/ga/TrackerProxy;->_ga:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_0
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lti/ga/TrackerProxy;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 54
    return-void
.end method
